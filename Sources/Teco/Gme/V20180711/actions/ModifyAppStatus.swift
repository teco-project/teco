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

extension Gme {
    /// ModifyAppStatus请求参数结构体
    public struct ModifyAppStatusRequest: TCRequestModel {
        /// 应用ID，创建应用后由后台生成并返回。
        public let bizId: UInt64

        /// 应用状态，取值：open/close
        public let status: String

        public init(bizId: UInt64, status: String) {
            self.bizId = bizId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case status = "Status"
        }
    }

    /// ModifyAppStatus返回参数结构体
    public struct ModifyAppStatusResponse: TCResponseModel {
        /// 修改应用开关状态返回数据
        public let data: ModifyAppStatusResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改应用开关状态
    ///
    /// 本接口(ModifyAppStatus)用于修改应用总开关状态。
    @inlinable
    public func modifyAppStatus(_ input: ModifyAppStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAppStatusResponse> {
        self.client.execute(action: "ModifyAppStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用开关状态
    ///
    /// 本接口(ModifyAppStatus)用于修改应用总开关状态。
    @inlinable
    public func modifyAppStatus(_ input: ModifyAppStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAppStatusResponse {
        try await self.client.execute(action: "ModifyAppStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用开关状态
    ///
    /// 本接口(ModifyAppStatus)用于修改应用总开关状态。
    @inlinable
    public func modifyAppStatus(bizId: UInt64, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAppStatusResponse> {
        self.modifyAppStatus(.init(bizId: bizId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用开关状态
    ///
    /// 本接口(ModifyAppStatus)用于修改应用总开关状态。
    @inlinable
    public func modifyAppStatus(bizId: UInt64, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAppStatusResponse {
        try await self.modifyAppStatus(.init(bizId: bizId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
