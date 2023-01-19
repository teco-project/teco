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

extension Cvm {
    /// RemoveChcDeployVpc请求参数结构体
    public struct RemoveChcDeployVpcRequest: TCRequestModel {
        /// CHC物理服务器Id。
        public let chcIds: [String]

        public init(chcIds: [String]) {
            self.chcIds = chcIds
        }

        enum CodingKeys: String, CodingKey {
            case chcIds = "ChcIds"
        }
    }

    /// RemoveChcDeployVpc返回参数结构体
    public struct RemoveChcDeployVpcResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 清理CHC物理服务器的部署网络
    @inlinable
    public func removeChcDeployVpc(_ input: RemoveChcDeployVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveChcDeployVpcResponse> {
        self.client.execute(action: "RemoveChcDeployVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清理CHC物理服务器的部署网络
    @inlinable
    public func removeChcDeployVpc(_ input: RemoveChcDeployVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveChcDeployVpcResponse {
        try await self.client.execute(action: "RemoveChcDeployVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清理CHC物理服务器的部署网络
    @inlinable
    public func removeChcDeployVpc(chcIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveChcDeployVpcResponse> {
        self.removeChcDeployVpc(RemoveChcDeployVpcRequest(chcIds: chcIds), region: region, logger: logger, on: eventLoop)
    }

    /// 清理CHC物理服务器的部署网络
    @inlinable
    public func removeChcDeployVpc(chcIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveChcDeployVpcResponse {
        try await self.removeChcDeployVpc(RemoveChcDeployVpcRequest(chcIds: chcIds), region: region, logger: logger, on: eventLoop)
    }
}
