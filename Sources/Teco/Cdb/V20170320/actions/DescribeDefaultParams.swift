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

extension Cdb {
    /// DescribeDefaultParams请求参数结构体
    public struct DescribeDefaultParamsRequest: TCRequestModel {
        /// 引擎版本，目前支持 ["5.1", "5.5", "5.6", "5.7", "8.0"]
        public let engineVersion: String

        /// 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        public let templateType: String?

        /// 参数模板引擎，默认值：InnoDB
        public let engineType: String?

        public init(engineVersion: String, templateType: String? = nil, engineType: String? = nil) {
            self.engineVersion = engineVersion
            self.templateType = templateType
            self.engineType = engineType
        }

        enum CodingKeys: String, CodingKey {
            case engineVersion = "EngineVersion"
            case templateType = "TemplateType"
            case engineType = "EngineType"
        }
    }

    /// DescribeDefaultParams返回参数结构体
    public struct DescribeDefaultParamsResponse: TCResponseModel {
        /// 参数个数。
        public let totalCount: Int64

        /// 参数详情。
        public let items: [ParameterDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询默认的可设置参数列表
    ///
    /// 该接口（DescribeDefaultParams）用于查询默认的可设置参数列表。
    @inlinable
    public func describeDefaultParams(_ input: DescribeDefaultParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultParamsResponse> {
        self.client.execute(action: "DescribeDefaultParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询默认的可设置参数列表
    ///
    /// 该接口（DescribeDefaultParams）用于查询默认的可设置参数列表。
    @inlinable
    public func describeDefaultParams(_ input: DescribeDefaultParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultParamsResponse {
        try await self.client.execute(action: "DescribeDefaultParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询默认的可设置参数列表
    ///
    /// 该接口（DescribeDefaultParams）用于查询默认的可设置参数列表。
    @inlinable
    public func describeDefaultParams(engineVersion: String, templateType: String? = nil, engineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultParamsResponse> {
        self.describeDefaultParams(.init(engineVersion: engineVersion, templateType: templateType, engineType: engineType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询默认的可设置参数列表
    ///
    /// 该接口（DescribeDefaultParams）用于查询默认的可设置参数列表。
    @inlinable
    public func describeDefaultParams(engineVersion: String, templateType: String? = nil, engineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultParamsResponse {
        try await self.describeDefaultParams(.init(engineVersion: engineVersion, templateType: templateType, engineType: engineType), region: region, logger: logger, on: eventLoop)
    }
}
