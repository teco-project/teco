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

extension Tsf {
    /// CreateGatewayApi请求参数结构体
    public struct CreateGatewayApiRequest: TCRequestModel {
        /// API 分组ID
        public let groupId: String

        /// Api信息
        public let apiList: [ApiInfo]

        /// 无
        public let programIdList: [String]?

        public init(groupId: String, apiList: [ApiInfo], programIdList: [String]? = nil) {
            self.groupId = groupId
            self.apiList = apiList
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case apiList = "ApiList"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateGatewayApi返回参数结构体
    public struct CreateGatewayApiResponse: TCResponseModel {
        /// 是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 批量导入API至api分组
    ///
    /// 批量导入API至api分组(也支持新建API到分组)
    @inlinable
    public func createGatewayApi(_ input: CreateGatewayApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGatewayApiResponse> {
        self.client.execute(action: "CreateGatewayApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量导入API至api分组
    ///
    /// 批量导入API至api分组(也支持新建API到分组)
    @inlinable
    public func createGatewayApi(_ input: CreateGatewayApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGatewayApiResponse {
        try await self.client.execute(action: "CreateGatewayApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量导入API至api分组
    ///
    /// 批量导入API至api分组(也支持新建API到分组)
    @inlinable
    public func createGatewayApi(groupId: String, apiList: [ApiInfo], programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGatewayApiResponse> {
        self.createGatewayApi(.init(groupId: groupId, apiList: apiList, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量导入API至api分组
    ///
    /// 批量导入API至api分组(也支持新建API到分组)
    @inlinable
    public func createGatewayApi(groupId: String, apiList: [ApiInfo], programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGatewayApiResponse {
        try await self.createGatewayApi(.init(groupId: groupId, apiList: apiList, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
