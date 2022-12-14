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

extension Tsf {
    /// DescribeGatewayApis请求参数结构体
    public struct DescribeGatewayApisRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String

        /// 翻页偏移量
        public let offset: Int64

        /// 每页的记录数
        public let limit: Int64

        /// 搜索关键字，支持 API path
        public let searchWord: String?

        /// 部署组ID
        public let gatewayDeployGroupId: String?

        public init(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayDeployGroupId: String? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.gatewayDeployGroupId = gatewayDeployGroupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case gatewayDeployGroupId = "GatewayDeployGroupId"
        }
    }

    /// DescribeGatewayApis返回参数结构体
    public struct DescribeGatewayApisResponse: TCResponseModel {
        /// 翻页结构
        public let result: TsfPageApiDetailInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(_ input: DescribeGatewayApisRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGatewayApisResponse > {
        self.client.execute(action: "DescribeGatewayApis", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(_ input: DescribeGatewayApisRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayApisResponse {
        try await self.client.execute(action: "DescribeGatewayApis", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayDeployGroupId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGatewayApisResponse > {
        self.describeGatewayApis(DescribeGatewayApisRequest(groupId: groupId, offset: offset, limit: limit, searchWord: searchWord, gatewayDeployGroupId: gatewayDeployGroupId), logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayDeployGroupId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayApisResponse {
        try await self.describeGatewayApis(DescribeGatewayApisRequest(groupId: groupId, offset: offset, limit: limit, searchWord: searchWord, gatewayDeployGroupId: gatewayDeployGroupId), logger: logger, on: eventLoop)
    }
}
