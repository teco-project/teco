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
    /// DeleteCcn请求参数结构体
    public struct DeleteCcnRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        public init(ccnId: String) {
            self.ccnId = ccnId
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
        }
    }

    /// DeleteCcn返回参数结构体
    public struct DeleteCcnResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除CCN
    ///
    /// 本接口（DeleteCcn）用于删除云联网。
    /// * 删除后，云联网关联的所有实例间路由将被删除，网络将会中断，请务必确认
    /// * 删除云联网是不可逆的操作，请谨慎处理。
    @inlinable
    public func deleteCcn(_ input: DeleteCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCcnResponse> {
        self.client.execute(action: "DeleteCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除CCN
    ///
    /// 本接口（DeleteCcn）用于删除云联网。
    /// * 删除后，云联网关联的所有实例间路由将被删除，网络将会中断，请务必确认
    /// * 删除云联网是不可逆的操作，请谨慎处理。
    @inlinable
    public func deleteCcn(_ input: DeleteCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCcnResponse {
        try await self.client.execute(action: "DeleteCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除CCN
    ///
    /// 本接口（DeleteCcn）用于删除云联网。
    /// * 删除后，云联网关联的所有实例间路由将被删除，网络将会中断，请务必确认
    /// * 删除云联网是不可逆的操作，请谨慎处理。
    @inlinable
    public func deleteCcn(ccnId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCcnResponse> {
        self.deleteCcn(DeleteCcnRequest(ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除CCN
    ///
    /// 本接口（DeleteCcn）用于删除云联网。
    /// * 删除后，云联网关联的所有实例间路由将被删除，网络将会中断，请务必确认
    /// * 删除云联网是不可逆的操作，请谨慎处理。
    @inlinable
    public func deleteCcn(ccnId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCcnResponse {
        try await self.deleteCcn(DeleteCcnRequest(ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }
}
