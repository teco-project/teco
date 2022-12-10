//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tione {
    /// 查询结构化数据集详情
    @inlinable
    public func describeDatasetDetailStructured(_ input: DescribeDatasetDetailStructuredRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDatasetDetailStructuredResponse > {
        self.client.execute(action: "DescribeDatasetDetailStructured", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询结构化数据集详情
    @inlinable
    public func describeDatasetDetailStructured(_ input: DescribeDatasetDetailStructuredRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetDetailStructuredResponse {
        try await self.client.execute(action: "DescribeDatasetDetailStructured", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDatasetDetailStructured请求参数结构体
    public struct DescribeDatasetDetailStructuredRequest: TCRequestModel {
        /// 数据集ID
        public let datasetId: String
        
        /// 偏移值
        public let offset: UInt64?
        
        /// 返回数据条数，默认20，目前最大支持2000条数据
        public let limit: UInt64?
        
        public init (datasetId: String, offset: UInt64?, limit: UInt64?) {
            self.datasetId = datasetId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case datasetId = "DatasetId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDatasetDetailStructured返回参数结构体
    public struct DescribeDatasetDetailStructuredResponse: TCResponseModel {
        /// 数据总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 表格头信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let columnNames: [String]?
        
        /// 表格内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rowItems: [RowItem]?
        
        /// 文本内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rowTexts: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case columnNames = "ColumnNames"
            case rowItems = "RowItems"
            case rowTexts = "RowTexts"
            case requestId = "RequestId"
        }
    }
}
