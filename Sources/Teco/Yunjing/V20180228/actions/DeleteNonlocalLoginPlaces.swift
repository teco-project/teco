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

extension Yunjing {
    /// DeleteNonlocalLoginPlaces请求参数结构体
    public struct DeleteNonlocalLoginPlacesRequest: TCRequestModel {
        /// 异地登录事件ID数组。
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// DeleteNonlocalLoginPlaces返回参数结构体
    public struct DeleteNonlocalLoginPlacesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除异地登录记录
    ///
    /// 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。
    @inlinable
    public func deleteNonlocalLoginPlaces(_ input: DeleteNonlocalLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNonlocalLoginPlacesResponse > {
        self.client.execute(action: "DeleteNonlocalLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除异地登录记录
    ///
    /// 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。
    @inlinable
    public func deleteNonlocalLoginPlaces(_ input: DeleteNonlocalLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "DeleteNonlocalLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除异地登录记录
    ///
    /// 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。
    @inlinable
    public func deleteNonlocalLoginPlaces(ids: [UInt64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNonlocalLoginPlacesResponse > {
        self.deleteNonlocalLoginPlaces(DeleteNonlocalLoginPlacesRequest(ids: ids), logger: logger, on: eventLoop)
    }

    /// 删除异地登录记录
    ///
    /// 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。
    @inlinable
    public func deleteNonlocalLoginPlaces(ids: [UInt64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNonlocalLoginPlacesResponse {
        try await self.deleteNonlocalLoginPlaces(DeleteNonlocalLoginPlacesRequest(ids: ids), logger: logger, on: eventLoop)
    }
}
