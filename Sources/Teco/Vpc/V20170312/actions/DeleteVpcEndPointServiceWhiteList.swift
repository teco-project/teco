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

extension Vpc {
    /// DeleteVpcEndPointServiceWhiteList请求参数结构体
    public struct DeleteVpcEndPointServiceWhiteListRequest: TCRequestModel {
        /// 用户UIN数组。
        public let userUin: [String]

        /// 终端节点服务ID。
        public let endPointServiceId: String

        public init(userUin: [String], endPointServiceId: String) {
            self.userUin = userUin
            self.endPointServiceId = endPointServiceId
        }

        enum CodingKeys: String, CodingKey {
            case userUin = "UserUin"
            case endPointServiceId = "EndPointServiceId"
        }
    }

    /// DeleteVpcEndPointServiceWhiteList返回参数结构体
    public struct DeleteVpcEndPointServiceWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除终端节点服务白名单
    ///
    /// 删除终端节点服务白名单。
    @inlinable
    public func deleteVpcEndPointServiceWhiteList(_ input: DeleteVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcEndPointServiceWhiteListResponse> {
        self.client.execute(action: "DeleteVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除终端节点服务白名单
    ///
    /// 删除终端节点服务白名单。
    @inlinable
    public func deleteVpcEndPointServiceWhiteList(_ input: DeleteVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndPointServiceWhiteListResponse {
        try await self.client.execute(action: "DeleteVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除终端节点服务白名单
    ///
    /// 删除终端节点服务白名单。
    @inlinable
    public func deleteVpcEndPointServiceWhiteList(userUin: [String], endPointServiceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcEndPointServiceWhiteListResponse> {
        self.deleteVpcEndPointServiceWhiteList(DeleteVpcEndPointServiceWhiteListRequest(userUin: userUin, endPointServiceId: endPointServiceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除终端节点服务白名单
    ///
    /// 删除终端节点服务白名单。
    @inlinable
    public func deleteVpcEndPointServiceWhiteList(userUin: [String], endPointServiceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndPointServiceWhiteListResponse {
        try await self.deleteVpcEndPointServiceWhiteList(DeleteVpcEndPointServiceWhiteListRequest(userUin: userUin, endPointServiceId: endPointServiceId), region: region, logger: logger, on: eventLoop)
    }
}
