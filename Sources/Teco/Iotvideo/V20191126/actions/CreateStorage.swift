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

extension Iotvideo {
    /// CreateStorage请求参数结构体
    public struct CreateStorageRequest: TCRequestModel {
        /// 云存套餐ID
        public let pkgId: String

        /// 设备TID
        public let tid: String

        /// 用户唯一标识，由厂商保证内部唯一性
        public let userTag: String

        public init(pkgId: String, tid: String, userTag: String) {
            self.pkgId = pkgId
            self.tid = tid
            self.userTag = userTag
        }

        enum CodingKeys: String, CodingKey {
            case pkgId = "PkgId"
            case tid = "Tid"
            case userTag = "UserTag"
        }
    }

    /// CreateStorage返回参数结构体
    public struct CreateStorageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 购买云存套餐
    ///
    /// 该接口已经停止维护，请勿使用
    @inlinable @discardableResult
    public func createStorage(_ input: CreateStorageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageResponse> {
        self.client.execute(action: "CreateStorage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买云存套餐
    ///
    /// 该接口已经停止维护，请勿使用
    @inlinable @discardableResult
    public func createStorage(_ input: CreateStorageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStorageResponse {
        try await self.client.execute(action: "CreateStorage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买云存套餐
    ///
    /// 该接口已经停止维护，请勿使用
    @inlinable @discardableResult
    public func createStorage(pkgId: String, tid: String, userTag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageResponse> {
        self.createStorage(.init(pkgId: pkgId, tid: tid, userTag: userTag), region: region, logger: logger, on: eventLoop)
    }

    /// 购买云存套餐
    ///
    /// 该接口已经停止维护，请勿使用
    @inlinable @discardableResult
    public func createStorage(pkgId: String, tid: String, userTag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStorageResponse {
        try await self.createStorage(.init(pkgId: pkgId, tid: tid, userTag: userTag), region: region, logger: logger, on: eventLoop)
    }
}
