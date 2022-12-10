//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tione {
    /// 创建数据集
    ///
    /// 创建数据集
    @inlinable
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDatasetResponse > {
        self.client.execute(action: "CreateDataset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建数据集
    ///
    /// 创建数据集
    @inlinable
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetResponse {
        try await self.client.execute(action: "CreateDataset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDataset请求参数结构体
    public struct CreateDatasetRequest: TCRequestModel {
        /// 数据集名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        public let datasetName: String
        
        /// 数据集类型:
        /// TYPE_DATASET_TEXT，文本
        /// TYPE_DATASET_IMAGE，图片
        /// TYPE_DATASET_TABLE，表格
        /// TYPE_DATASET_OTHER，其他
        public let datasetType: String
        
        /// 数据源cos路径
        public let storageDataPath: CosPathInfo
        
        /// 数据集标签cos存储路径
        public let storageLabelPath: CosPathInfo
        
        /// 数据集标签
        public let datasetTags: [Tag]?
        
        /// 数据集标注状态:
        /// STATUS_NON_ANNOTATED，未标注
        /// STATUS_ANNOTATED，已标注
        public let annotationStatus: String?
        
        /// 标注类型:
        /// ANNOTATION_TYPE_CLASSIFICATION，图片分类
        /// ANNOTATION_TYPE_DETECTION，目标检测
        /// ANNOTATION_TYPE_SEGMENTATION，图片分割
        /// ANNOTATION_TYPE_TRACKING，目标跟踪
        public let annotationType: String?
        
        /// 标注格式:
        /// ANNOTATION_FORMAT_TI，TI平台格式
        /// ANNOTATION_FORMAT_PASCAL，Pascal Voc
        /// ANNOTATION_FORMAT_COCO，COCO
        /// ANNOTATION_FORMAT_FILE，文件目录结构
        public let annotationFormat: String?
        
        /// 表头信息
        public let schemaInfos: [SchemaInfo]?
        
        /// 数据是否存在表头
        public let isSchemaExisted: Bool?
        
        /// 导入文件粒度，按行或者按文件
        public let contentType: String?
        
        public init (datasetName: String, datasetType: String, storageDataPath: CosPathInfo, storageLabelPath: CosPathInfo, datasetTags: [Tag]?, annotationStatus: String?, annotationType: String?, annotationFormat: String?, schemaInfos: [SchemaInfo]?, isSchemaExisted: Bool?, contentType: String?) {
            self.datasetName = datasetName
            self.datasetType = datasetType
            self.storageDataPath = storageDataPath
            self.storageLabelPath = storageLabelPath
            self.datasetTags = datasetTags
            self.annotationStatus = annotationStatus
            self.annotationType = annotationType
            self.annotationFormat = annotationFormat
            self.schemaInfos = schemaInfos
            self.isSchemaExisted = isSchemaExisted
            self.contentType = contentType
        }
        
        enum CodingKeys: String, CodingKey {
            case datasetName = "DatasetName"
            case datasetType = "DatasetType"
            case storageDataPath = "StorageDataPath"
            case storageLabelPath = "StorageLabelPath"
            case datasetTags = "DatasetTags"
            case annotationStatus = "AnnotationStatus"
            case annotationType = "AnnotationType"
            case annotationFormat = "AnnotationFormat"
            case schemaInfos = "SchemaInfos"
            case isSchemaExisted = "IsSchemaExisted"
            case contentType = "ContentType"
        }
    }
    
    /// CreateDataset返回参数结构体
    public struct CreateDatasetResponse: TCResponseModel {
        /// 数据集ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let datasetId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case datasetId = "DatasetId"
            case requestId = "RequestId"
        }
    }
}