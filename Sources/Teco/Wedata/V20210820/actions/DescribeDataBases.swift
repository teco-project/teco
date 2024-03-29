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

import Logging
import NIOCore
import TecoCore

extension Wedata {
    /// DescribeDataBases请求参数结构体
    public struct DescribeDataBasesRequest: TCRequest {
        /// 项目Id
        public let projectId: String?

        /// 数据源id
        public let datasourceId: String?

        /// 数据源类型
        public let dsTypes: [UInt64]?

        public init(projectId: String? = nil, datasourceId: String? = nil, dsTypes: [UInt64]? = nil) {
            self.projectId = projectId
            self.datasourceId = datasourceId
            self.dsTypes = dsTypes
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case datasourceId = "DatasourceId"
            case dsTypes = "DsTypes"
        }
    }

    /// DescribeDataBases返回参数结构体
    public struct DescribeDataBasesResponse: TCResponse {
        /// 数据来源数据数据库列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DatabaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询数据来源列表
    @inlinable
    public func describeDataBases(_ input: DescribeDataBasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataBasesResponse> {
        self.client.execute(action: "DescribeDataBases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据来源列表
    @inlinable
    public func describeDataBases(_ input: DescribeDataBasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataBasesResponse {
        try await self.client.execute(action: "DescribeDataBases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据来源列表
    @inlinable
    public func describeDataBases(projectId: String? = nil, datasourceId: String? = nil, dsTypes: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataBasesResponse> {
        self.describeDataBases(.init(projectId: projectId, datasourceId: datasourceId, dsTypes: dsTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据来源列表
    @inlinable
    public func describeDataBases(projectId: String? = nil, datasourceId: String? = nil, dsTypes: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataBasesResponse {
        try await self.describeDataBases(.init(projectId: projectId, datasourceId: datasourceId, dsTypes: dsTypes), region: region, logger: logger, on: eventLoop)
    }
}
