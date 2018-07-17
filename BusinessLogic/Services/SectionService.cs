﻿using System;
using System.Collections.Generic;
using System.Linq;
using AutoMapper;
using DataAccess.BaseRepository;
using DataAccess.EF;
using DataAccess.Repository;
using Model.ViewModel;

namespace BusinessLogic.Services
{
    public interface ISectionService
    {
        IEnumerable<SectionItem> GetCount();
        void Create(SectionModel model, int currentUserId);
        void Delete(int id);
        void Update(SectionModel model, int currentUserId);
        SectionItem GetItem(int id);
        SectionModel GetSection(int userId);
        SectionDetail GetDetail(int id);
        bool NameExist(SectionModel unit);
        bool LevelExit(SectionModel model);
    }
    public class SectionService : ISectionService
    {
        private readonly IUnitOfWorkAsync _unitOfWork;
        private readonly ISectionRepository _sectionRepository;

        public IEnumerable<SectionItem> GetCount()
        {
            return ProcessQuery(_sectionRepository.Table.ToList());
        }
        public SectionService(IUnitOfWorkAsync unitOfWork, ISectionRepository brandRepository)
        {
            _unitOfWork = unitOfWork;
            _sectionRepository = brandRepository;

        }

        public void Create(SectionModel model, int currentUserId)
        {
            try
            {
                _unitOfWork.BeginTransaction();

                if (model.IsActive)
                {
                    UpdateActiveSession();
                }

                var entity = Mapper.Map<SectionModel, Section>(model);
                entity.CreatedAt = DateTime.Now;
                _sectionRepository.Insert(entity);
                _unitOfWork.Commit();
            }
            catch (Exception ex)
            {
                _unitOfWork.Rollback();
                throw new Exception(ex.Message);
            }
        }

        private void UpdateActiveSession()
        {
            try
            {

                var modelToUpdate = _sectionRepository.Table.Where(c => c.IsActive);
                if (modelToUpdate.Any())
                {
                    foreach (var section in modelToUpdate)
                    {
                        section.IsActive = false;
                    }
                    _sectionRepository.UpdateRange(modelToUpdate);
                }

            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public void Delete(int id)
        {
            try
            {
                _unitOfWork.BeginTransaction();
                var entity = GetSectionEntity(id);
                _sectionRepository.Delete(entity);
                _unitOfWork.Commit();
            }
            catch (Exception ex)
            {
                _unitOfWork.Rollback();
                throw new Exception(ex.Message);
            }
        }

        public SectionDetail GetDetail(int id)
        {
            var entity = GetSectionEntity(id);
            return Mapper.Map<Section, SectionDetail>(entity);
        }

        public SectionItem GetItem(int id)
        {
            var entity = GetSectionEntity(id);
            return Mapper.Map<Section, SectionItem>(entity);
        }
        private static IEnumerable<SectionItem> ProcessQuery(IEnumerable<Section> entities)
        {
            return Mapper.Map<IEnumerable<Section>, List<SectionItem>>(entities);
        }

        public void Update(SectionModel model, int currentUserId)
        {

            try
            {
                _unitOfWork.BeginTransaction();

                if (model.IsActive)
                {
                    UpdateActiveSession();
                }

                var userProfile = GetSectionEntity(model.Id);
                Mapper.Map(model, userProfile);
                _sectionRepository.Update(userProfile);
                _unitOfWork.Commit();
            }
            catch (Exception ex)
            {
                _unitOfWork.Rollback();
                throw new Exception(ex.Message);
            }
        }
        private Section GetSectionEntity(int id)
        {
            return _sectionRepository.Find(id);

        }
        public SectionModel GetSection(int userId)
        {
            var entity = GetSectionEntity(userId);
            return Mapper.Map<Section, SectionModel>(entity);
        }

        public bool NameExist(SectionModel brand)
        {
            return _sectionRepository.NameExist(brand);
        }

        public bool LevelExit(SectionModel model)
        {
            return _sectionRepository.Table.Any(c => c.LevelId == model.LevelId && c.Id != model.Id);
        }
    }
}

