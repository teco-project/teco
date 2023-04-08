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

extension Ssa {
    /// DescribeComplianceList请求参数结构体
    public struct DescribeComplianceListRequest: TCRequestModel {
        /// 搜索过滤条件
        public let filter: String?

        public init(filter: String? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeComplianceList返回参数结构体
    public struct DescribeComplianceListResponse: TCResponseModel {
        /// 检查项列表
        public let data: [DataCompliance]

        /// 总检查资产数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assetTotalNum: Int64?

        /// 总检查项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configTotalNum: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case assetTotalNum = "AssetTotalNum"
            case configTotalNum = "ConfigTotalNum"
            case requestId = "RequestId"
        }
    }

    /// 合规管理总览页检查项列表
    @inlinable
    public func describeComplianceList(_ input: DescribeComplianceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceListResponse> {
        self.client.execute(action: "DescribeComplianceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合规管理总览页检查项列表
    @inlinable
    public func describeComplianceList(_ input: DescribeComplianceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceListResponse {
        try await self.client.execute(action: "DescribeComplianceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合规管理总览页检查项列表
    @inlinable
    public func describeComplianceList(filter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceListResponse> {
        self.describeComplianceList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 合规管理总览页检查项列表
    @inlinable
    public func describeComplianceList(filter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceListResponse {
        try await self.describeComplianceList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
