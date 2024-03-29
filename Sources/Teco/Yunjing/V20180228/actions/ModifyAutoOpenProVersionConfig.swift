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

extension Yunjing {
    /// ModifyAutoOpenProVersionConfig请求参数结构体
    public struct ModifyAutoOpenProVersionConfigRequest: TCRequest {
        /// 设置自动开通状态。
        /// - CLOSE：关闭
        /// - OPEN：打开
        public let status: String

        public init(status: String) {
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    /// ModifyAutoOpenProVersionConfig返回参数结构体
    public struct ModifyAutoOpenProVersionConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置新增主机自动开通专业版配置
    ///
    /// 本接口 (ModifyAutoOpenProVersionConfig) 用于设置新增主机自动开通专业版配置。
    @inlinable @discardableResult
    public func modifyAutoOpenProVersionConfig(_ input: ModifyAutoOpenProVersionConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoOpenProVersionConfigResponse> {
        self.client.execute(action: "ModifyAutoOpenProVersionConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置新增主机自动开通专业版配置
    ///
    /// 本接口 (ModifyAutoOpenProVersionConfig) 用于设置新增主机自动开通专业版配置。
    @inlinable @discardableResult
    public func modifyAutoOpenProVersionConfig(_ input: ModifyAutoOpenProVersionConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoOpenProVersionConfigResponse {
        try await self.client.execute(action: "ModifyAutoOpenProVersionConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置新增主机自动开通专业版配置
    ///
    /// 本接口 (ModifyAutoOpenProVersionConfig) 用于设置新增主机自动开通专业版配置。
    @inlinable @discardableResult
    public func modifyAutoOpenProVersionConfig(status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoOpenProVersionConfigResponse> {
        self.modifyAutoOpenProVersionConfig(.init(status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 设置新增主机自动开通专业版配置
    ///
    /// 本接口 (ModifyAutoOpenProVersionConfig) 用于设置新增主机自动开通专业版配置。
    @inlinable @discardableResult
    public func modifyAutoOpenProVersionConfig(status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoOpenProVersionConfigResponse {
        try await self.modifyAutoOpenProVersionConfig(.init(status: status), region: region, logger: logger, on: eventLoop)
    }
}
