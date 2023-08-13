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

extension Vod {
    /// ModifySubAppIdStatus请求参数结构体
    public struct ModifySubAppIdStatusRequest: TCRequestModel {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64

        /// 子应用状态，取值范围：
        /// <li>On：启用。</li>
        /// <li>Off：停用。</li>
        /// <li>Destroyed：销毁。</li>
        /// 当前状态如果是 Destoying ，不能进行启用操作，需要等待销毁完成后才能重新启用。
        public let status: String

        public init(subAppId: UInt64, status: String) {
            self.subAppId = subAppId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case status = "Status"
        }
    }

    /// ModifySubAppIdStatus返回参数结构体
    public struct ModifySubAppIdStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改子应用状态
    ///
    /// 该接口用于启用、停用子应用。被停用的子应用将封停对应域名，并限制控制台访问。
    @inlinable @discardableResult
    public func modifySubAppIdStatus(_ input: ModifySubAppIdStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubAppIdStatusResponse> {
        self.client.execute(action: "ModifySubAppIdStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改子应用状态
    ///
    /// 该接口用于启用、停用子应用。被停用的子应用将封停对应域名，并限制控制台访问。
    @inlinable @discardableResult
    public func modifySubAppIdStatus(_ input: ModifySubAppIdStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubAppIdStatusResponse {
        try await self.client.execute(action: "ModifySubAppIdStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改子应用状态
    ///
    /// 该接口用于启用、停用子应用。被停用的子应用将封停对应域名，并限制控制台访问。
    @inlinable @discardableResult
    public func modifySubAppIdStatus(subAppId: UInt64, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubAppIdStatusResponse> {
        self.modifySubAppIdStatus(.init(subAppId: subAppId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改子应用状态
    ///
    /// 该接口用于启用、停用子应用。被停用的子应用将封停对应域名，并限制控制台访问。
    @inlinable @discardableResult
    public func modifySubAppIdStatus(subAppId: UInt64, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubAppIdStatusResponse {
        try await self.modifySubAppIdStatus(.init(subAppId: subAppId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
