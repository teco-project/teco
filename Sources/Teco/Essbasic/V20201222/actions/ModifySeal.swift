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

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// ModifySeal请求参数结构体
    public struct ModifySealRequest: TCRequest {
        /// 调用方信息
        public let caller: Caller

        /// 请求更新印章的客户端IP
        public let sourceIp: String

        /// 电子印章ID。若为空，则修改个人/机构的默认印章。
        public let sealId: String?

        /// 电子印章名称
        public let sealName: String?

        /// 印章图片，base64编码（与FileId参数二选一，同时传入参数时优先使用Image参数）
        public let image: String?

        /// 印章图片文件ID（与Image参数二选一，同时传入参数时优先使用Image参数）
        public let fileId: String?

        /// 需要更新印章的用户ID
        public let userId: String?

        public init(caller: Caller, sourceIp: String, sealId: String? = nil, sealName: String? = nil, image: String? = nil, fileId: String? = nil, userId: String? = nil) {
            self.caller = caller
            self.sourceIp = sourceIp
            self.sealId = sealId
            self.sealName = sealName
            self.image = image
            self.fileId = fileId
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case sourceIp = "SourceIp"
            case sealId = "SealId"
            case sealName = "SealName"
            case image = "Image"
            case fileId = "FileId"
            case userId = "UserId"
        }
    }

    /// ModifySeal返回参数结构体
    public struct ModifySealResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新电子印章
    ///
    /// 此接口（ModifySeal）用于修改指定印章ID的印章图片和名称。
    ///
    /// 注：印章类型暂不支持修改，如需调整，请联系客服经理或通过创建印章接口（CreateSeal）进行创建新印章。
    @inlinable @discardableResult
    public func modifySeal(_ input: ModifySealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySealResponse> {
        self.client.execute(action: "ModifySeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新电子印章
    ///
    /// 此接口（ModifySeal）用于修改指定印章ID的印章图片和名称。
    ///
    /// 注：印章类型暂不支持修改，如需调整，请联系客服经理或通过创建印章接口（CreateSeal）进行创建新印章。
    @inlinable @discardableResult
    public func modifySeal(_ input: ModifySealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySealResponse {
        try await self.client.execute(action: "ModifySeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新电子印章
    ///
    /// 此接口（ModifySeal）用于修改指定印章ID的印章图片和名称。
    ///
    /// 注：印章类型暂不支持修改，如需调整，请联系客服经理或通过创建印章接口（CreateSeal）进行创建新印章。
    @inlinable @discardableResult
    public func modifySeal(caller: Caller, sourceIp: String, sealId: String? = nil, sealName: String? = nil, image: String? = nil, fileId: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySealResponse> {
        self.modifySeal(.init(caller: caller, sourceIp: sourceIp, sealId: sealId, sealName: sealName, image: image, fileId: fileId, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新电子印章
    ///
    /// 此接口（ModifySeal）用于修改指定印章ID的印章图片和名称。
    ///
    /// 注：印章类型暂不支持修改，如需调整，请联系客服经理或通过创建印章接口（CreateSeal）进行创建新印章。
    @inlinable @discardableResult
    public func modifySeal(caller: Caller, sourceIp: String, sealId: String? = nil, sealName: String? = nil, image: String? = nil, fileId: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySealResponse {
        try await self.modifySeal(.init(caller: caller, sourceIp: sourceIp, sealId: sealId, sealName: sealName, image: image, fileId: fileId, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
