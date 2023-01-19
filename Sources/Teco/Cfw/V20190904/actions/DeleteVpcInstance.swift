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

extension Cfw {
    /// DeleteVpcInstance请求参数结构体
    public struct DeleteVpcInstanceRequest: TCRequestModel {
        public init() {
        }
    }

    /// DeleteVpcInstance返回参数结构体
    public struct DeleteVpcInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除防火墙实例
    @inlinable
    public func deleteVpcInstance(_ input: DeleteVpcInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcInstanceResponse> {
        self.client.execute(action: "DeleteVpcInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除防火墙实例
    @inlinable
    public func deleteVpcInstance(_ input: DeleteVpcInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcInstanceResponse {
        try await self.client.execute(action: "DeleteVpcInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除防火墙实例
    @inlinable
    public func deleteVpcInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcInstanceResponse> {
        self.deleteVpcInstance(DeleteVpcInstanceRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 删除防火墙实例
    @inlinable
    public func deleteVpcInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcInstanceResponse {
        try await self.deleteVpcInstance(DeleteVpcInstanceRequest(), region: region, logger: logger, on: eventLoop)
    }
}
