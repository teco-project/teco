//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Wedata {
    /// DescribeDataTypes请求参数结构体
    public struct DescribeDataTypesRequest: TCRequestModel {
        /// 数据源类型，MYSQL|KAFKA等
        public let datasourceType: String

        /// 项目ID。
        public let projectId: String

        public init(datasourceType: String, projectId: String) {
            self.datasourceType = datasourceType
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case datasourceType = "DatasourceType"
            case projectId = "ProjectId"
        }
    }

    /// DescribeDataTypes返回参数结构体
    public struct DescribeDataTypesResponse: TCResponseModel {
        /// 字段类型列表。
        public let typeInfoSet: [Label]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case typeInfoSet = "TypeInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取字段类型列表
    @inlinable
    public func describeDataTypes(_ input: DescribeDataTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataTypesResponse> {
        self.client.execute(action: "DescribeDataTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取字段类型列表
    @inlinable
    public func describeDataTypes(_ input: DescribeDataTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataTypesResponse {
        try await self.client.execute(action: "DescribeDataTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取字段类型列表
    @inlinable
    public func describeDataTypes(datasourceType: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataTypesResponse> {
        self.describeDataTypes(DescribeDataTypesRequest(datasourceType: datasourceType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取字段类型列表
    @inlinable
    public func describeDataTypes(datasourceType: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataTypesResponse {
        try await self.describeDataTypes(DescribeDataTypesRequest(datasourceType: datasourceType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
