//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Tione {
    /// DescribeDatasetDetailUnstructured请求参数结构体
    public struct DescribeDatasetDetailUnstructuredRequest: TCRequestModel {
        /// 数据集ID
        public let datasetId: String?

        /// 偏移量
        public let offset: UInt64?

        /// 返回个数，默认20，目前最大支持2000条数据
        public let limit: UInt64?

        /// 标签过滤参数，对应标签值
        public let labelList: [String]?

        /// 标注状态过滤参数:
        /// STATUS_ANNOTATED，已标注
        /// STATUS_NON_ANNOTATED，未标注
        /// STATUS_ALL，全部
        /// 默认为STATUS_ALL
        public let annotationStatus: String?

        /// 数据集ID列表
        public let datasetIds: [String]?

        /// 要筛选的文本分类场景标签信息
        public let textClassificationLabels: [TextLabelDistributionInfo]?

        public init(datasetId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, labelList: [String]? = nil, annotationStatus: String? = nil, datasetIds: [String]? = nil, textClassificationLabels: [TextLabelDistributionInfo]? = nil) {
            self.datasetId = datasetId
            self.offset = offset
            self.limit = limit
            self.labelList = labelList
            self.annotationStatus = annotationStatus
            self.datasetIds = datasetIds
            self.textClassificationLabels = textClassificationLabels
        }

        enum CodingKeys: String, CodingKey {
            case datasetId = "DatasetId"
            case offset = "Offset"
            case limit = "Limit"
            case labelList = "LabelList"
            case annotationStatus = "AnnotationStatus"
            case datasetIds = "DatasetIds"
            case textClassificationLabels = "TextClassificationLabels"
        }
    }

    /// DescribeDatasetDetailUnstructured返回参数结构体
    public struct DescribeDatasetDetailUnstructuredResponse: TCResponseModel {
        /// 已标注数据量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let annotatedTotalCount: UInt64?

        /// 没有标注数据量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nonAnnotatedTotalCount: UInt64?

        /// 过滤数据总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filterTotalCount: UInt64?

        /// 过滤数据详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filterLabelList: [FilterLabelInfo]?

        /// 数据文本行，默认返回前1000行
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rowTexts: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case annotatedTotalCount = "AnnotatedTotalCount"
            case nonAnnotatedTotalCount = "NonAnnotatedTotalCount"
            case filterTotalCount = "FilterTotalCount"
            case filterLabelList = "FilterLabelList"
            case rowTexts = "RowTexts"
            case requestId = "RequestId"
        }
    }

    /// 查询非结构化数据集详情
    @inlinable
    public func describeDatasetDetailUnstructured(_ input: DescribeDatasetDetailUnstructuredRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetDetailUnstructuredResponse> {
        self.client.execute(action: "DescribeDatasetDetailUnstructured", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询非结构化数据集详情
    @inlinable
    public func describeDatasetDetailUnstructured(_ input: DescribeDatasetDetailUnstructuredRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetDetailUnstructuredResponse {
        try await self.client.execute(action: "DescribeDatasetDetailUnstructured", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询非结构化数据集详情
    @inlinable
    public func describeDatasetDetailUnstructured(datasetId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, labelList: [String]? = nil, annotationStatus: String? = nil, datasetIds: [String]? = nil, textClassificationLabels: [TextLabelDistributionInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetDetailUnstructuredResponse> {
        self.describeDatasetDetailUnstructured(.init(datasetId: datasetId, offset: offset, limit: limit, labelList: labelList, annotationStatus: annotationStatus, datasetIds: datasetIds, textClassificationLabels: textClassificationLabels), region: region, logger: logger, on: eventLoop)
    }

    /// 查询非结构化数据集详情
    @inlinable
    public func describeDatasetDetailUnstructured(datasetId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, labelList: [String]? = nil, annotationStatus: String? = nil, datasetIds: [String]? = nil, textClassificationLabels: [TextLabelDistributionInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetDetailUnstructuredResponse {
        try await self.describeDatasetDetailUnstructured(.init(datasetId: datasetId, offset: offset, limit: limit, labelList: labelList, annotationStatus: annotationStatus, datasetIds: datasetIds, textClassificationLabels: textClassificationLabels), region: region, logger: logger, on: eventLoop)
    }
}
