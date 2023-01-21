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

extension Wedata {
    /// DescribeTemplateDimCount请求参数结构体
    public struct DescribeTemplateDimCountRequest: TCRequestModel {
        /// 模版类型
        public let type: UInt64?

        /// 项目ID
        public let projectId: String?

        public init(type: UInt64? = nil, projectId: String? = nil) {
            self.type = type
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case projectId = "ProjectId"
        }
    }

    /// DescribeTemplateDimCount返回参数结构体
    public struct DescribeTemplateDimCountResponse: TCResponseModel {
        /// 维度统计结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DimensionCount]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询规则模版维度分布情况
    @inlinable
    public func describeTemplateDimCount(_ input: DescribeTemplateDimCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateDimCountResponse> {
        self.client.execute(action: "DescribeTemplateDimCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则模版维度分布情况
    @inlinable
    public func describeTemplateDimCount(_ input: DescribeTemplateDimCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateDimCountResponse {
        try await self.client.execute(action: "DescribeTemplateDimCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则模版维度分布情况
    @inlinable
    public func describeTemplateDimCount(type: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateDimCountResponse> {
        self.describeTemplateDimCount(DescribeTemplateDimCountRequest(type: type, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则模版维度分布情况
    @inlinable
    public func describeTemplateDimCount(type: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateDimCountResponse {
        try await self.describeTemplateDimCount(DescribeTemplateDimCountRequest(type: type, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
