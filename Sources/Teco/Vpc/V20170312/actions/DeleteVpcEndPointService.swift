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
    /// DeleteVpcEndPointService请求参数结构体
    public struct DeleteVpcEndPointServiceRequest: TCRequestModel {
        /// 终端节点ID。
        public let endPointServiceId: String

        public init(endPointServiceId: String) {
            self.endPointServiceId = endPointServiceId
        }

        enum CodingKeys: String, CodingKey {
            case endPointServiceId = "EndPointServiceId"
        }
    }

    /// DeleteVpcEndPointService返回参数结构体
    public struct DeleteVpcEndPointServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除终端节点服务
    ///
    /// 删除终端节点服务。
    @inlinable @discardableResult
    public func deleteVpcEndPointService(_ input: DeleteVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcEndPointServiceResponse> {
        self.client.execute(action: "DeleteVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除终端节点服务
    ///
    /// 删除终端节点服务。
    @inlinable @discardableResult
    public func deleteVpcEndPointService(_ input: DeleteVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndPointServiceResponse {
        try await self.client.execute(action: "DeleteVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除终端节点服务
    ///
    /// 删除终端节点服务。
    @inlinable @discardableResult
    public func deleteVpcEndPointService(endPointServiceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcEndPointServiceResponse> {
        self.deleteVpcEndPointService(DeleteVpcEndPointServiceRequest(endPointServiceId: endPointServiceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除终端节点服务
    ///
    /// 删除终端节点服务。
    @inlinable @discardableResult
    public func deleteVpcEndPointService(endPointServiceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndPointServiceResponse {
        try await self.deleteVpcEndPointService(DeleteVpcEndPointServiceRequest(endPointServiceId: endPointServiceId), region: region, logger: logger, on: eventLoop)
    }
}
