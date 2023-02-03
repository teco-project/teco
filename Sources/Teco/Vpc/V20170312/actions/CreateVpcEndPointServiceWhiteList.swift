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

extension Vpc {
    /// CreateVpcEndPointServiceWhiteList请求参数结构体
    public struct CreateVpcEndPointServiceWhiteListRequest: TCRequestModel {
        /// UIN。
        public let userUin: String

        /// 终端节点服务ID。
        public let endPointServiceId: String

        /// 白名单描述。
        public let description: String?

        public init(userUin: String, endPointServiceId: String, description: String? = nil) {
            self.userUin = userUin
            self.endPointServiceId = endPointServiceId
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case userUin = "UserUin"
            case endPointServiceId = "EndPointServiceId"
            case description = "Description"
        }
    }

    /// CreateVpcEndPointServiceWhiteList返回参数结构体
    public struct CreateVpcEndPointServiceWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建终端服务白名单
    ///
    /// 创建终端服务白名单。
    @inlinable @discardableResult
    public func createVpcEndPointServiceWhiteList(_ input: CreateVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcEndPointServiceWhiteListResponse> {
        self.client.execute(action: "CreateVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建终端服务白名单
    ///
    /// 创建终端服务白名单。
    @inlinable @discardableResult
    public func createVpcEndPointServiceWhiteList(_ input: CreateVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndPointServiceWhiteListResponse {
        try await self.client.execute(action: "CreateVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建终端服务白名单
    ///
    /// 创建终端服务白名单。
    @inlinable @discardableResult
    public func createVpcEndPointServiceWhiteList(userUin: String, endPointServiceId: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcEndPointServiceWhiteListResponse> {
        let input = CreateVpcEndPointServiceWhiteListRequest(userUin: userUin, endPointServiceId: endPointServiceId, description: description)
        return self.client.execute(action: "CreateVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建终端服务白名单
    ///
    /// 创建终端服务白名单。
    @inlinable @discardableResult
    public func createVpcEndPointServiceWhiteList(userUin: String, endPointServiceId: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndPointServiceWhiteListResponse {
        let input = CreateVpcEndPointServiceWhiteListRequest(userUin: userUin, endPointServiceId: endPointServiceId, description: description)
        return try await self.client.execute(action: "CreateVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
