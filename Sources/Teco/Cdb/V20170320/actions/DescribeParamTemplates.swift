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

extension Cdb {
    /// DescribeParamTemplates请求参数结构体
    public struct DescribeParamTemplatesRequest: TCRequestModel {
        /// 引擎版本，缺省则查询所有
        public let engineVersions: [String]?

        /// 引擎类型，缺省则查询所有
        public let engineTypes: [String]?

        /// 模板名称，缺省则查询所有
        public let templateNames: [String]?

        /// 模板id，缺省则查询所有
        public let templateIds: [Int64]?

        public init(engineVersions: [String]? = nil, engineTypes: [String]? = nil, templateNames: [String]? = nil, templateIds: [Int64]? = nil) {
            self.engineVersions = engineVersions
            self.engineTypes = engineTypes
            self.templateNames = templateNames
            self.templateIds = templateIds
        }

        enum CodingKeys: String, CodingKey {
            case engineVersions = "EngineVersions"
            case engineTypes = "EngineTypes"
            case templateNames = "TemplateNames"
            case templateIds = "TemplateIds"
        }
    }

    /// DescribeParamTemplates返回参数结构体
    public struct DescribeParamTemplatesResponse: TCResponseModel {
        /// 该用户的参数模板数量。
        public let totalCount: Int64

        /// 参数模板详情。
        public let items: [ParamTemplateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询参数模板列表
    ///
    /// 该接口（DescribeParamTemplates）查询参数模板列表，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplates(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplatesResponse> {
        self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    ///
    /// 该接口（DescribeParamTemplates）查询参数模板列表，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplates(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplatesResponse {
        try await self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板列表
    ///
    /// 该接口（DescribeParamTemplates）查询参数模板列表，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplates(engineVersions: [String]? = nil, engineTypes: [String]? = nil, templateNames: [String]? = nil, templateIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplatesResponse> {
        let input = DescribeParamTemplatesRequest(engineVersions: engineVersions, engineTypes: engineTypes, templateNames: templateNames, templateIds: templateIds)
        return self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    ///
    /// 该接口（DescribeParamTemplates）查询参数模板列表，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplates(engineVersions: [String]? = nil, engineTypes: [String]? = nil, templateNames: [String]? = nil, templateIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplatesResponse {
        let input = DescribeParamTemplatesRequest(engineVersions: engineVersions, engineTypes: engineTypes, templateNames: templateNames, templateIds: templateIds)
        return try await self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
