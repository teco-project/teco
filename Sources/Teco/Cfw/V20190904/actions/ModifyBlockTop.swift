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
    /// ModifyBlockTop请求参数结构体
    public struct ModifyBlockTopRequest: TCRequestModel {
        /// 记录id
        public let uniqueId: String

        /// 操作类型 1 置顶 0取消
        public let opeType: String

        public init(uniqueId: String, opeType: String) {
            self.uniqueId = uniqueId
            self.opeType = opeType
        }

        enum CodingKeys: String, CodingKey {
            case uniqueId = "UniqueId"
            case opeType = "OpeType"
        }
    }

    /// ModifyBlockTop返回参数结构体
    public struct ModifyBlockTopResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消阻断记录置顶接口
    ///
    /// ModifyBlockTop取消置顶接口
    @inlinable
    public func modifyBlockTop(_ input: ModifyBlockTopRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBlockTopResponse> {
        self.client.execute(action: "ModifyBlockTop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消阻断记录置顶接口
    ///
    /// ModifyBlockTop取消置顶接口
    @inlinable
    public func modifyBlockTop(_ input: ModifyBlockTopRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlockTopResponse {
        try await self.client.execute(action: "ModifyBlockTop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消阻断记录置顶接口
    ///
    /// ModifyBlockTop取消置顶接口
    @inlinable
    public func modifyBlockTop(uniqueId: String, opeType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBlockTopResponse> {
        self.modifyBlockTop(ModifyBlockTopRequest(uniqueId: uniqueId, opeType: opeType), region: region, logger: logger, on: eventLoop)
    }

    /// 取消阻断记录置顶接口
    ///
    /// ModifyBlockTop取消置顶接口
    @inlinable
    public func modifyBlockTop(uniqueId: String, opeType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlockTopResponse {
        try await self.modifyBlockTop(ModifyBlockTopRequest(uniqueId: uniqueId, opeType: opeType), region: region, logger: logger, on: eventLoop)
    }
}
