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

extension Waf {
    /// ModifyHostStatus请求参数结构体
    public struct ModifyHostStatusRequest: TCRequest {
        /// 域名状态列表
        public let hostsStatus: [HostStatus]

        public init(hostsStatus: [HostStatus]) {
            self.hostsStatus = hostsStatus
        }

        enum CodingKeys: String, CodingKey {
            case hostsStatus = "HostsStatus"
        }
    }

    /// ModifyHostStatus返回参数结构体
    public struct ModifyHostStatusResponse: TCResponse {
        /// 成功的状态码，需要JSON解码后再使用，返回的格式是{"域名":"状态"}，成功的状态码为Success，其它的为失败的状态码（yunapi定义的错误码）
        public let success: ResponseCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 设置防护域名WAF开关
    ///
    /// clb-waf 设置防护域名WAF开关
    /// 支持批量操作。
    @inlinable
    public func modifyHostStatus(_ input: ModifyHostStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostStatusResponse> {
        self.client.execute(action: "ModifyHostStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置防护域名WAF开关
    ///
    /// clb-waf 设置防护域名WAF开关
    /// 支持批量操作。
    @inlinable
    public func modifyHostStatus(_ input: ModifyHostStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostStatusResponse {
        try await self.client.execute(action: "ModifyHostStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置防护域名WAF开关
    ///
    /// clb-waf 设置防护域名WAF开关
    /// 支持批量操作。
    @inlinable
    public func modifyHostStatus(hostsStatus: [HostStatus], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostStatusResponse> {
        self.modifyHostStatus(.init(hostsStatus: hostsStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 设置防护域名WAF开关
    ///
    /// clb-waf 设置防护域名WAF开关
    /// 支持批量操作。
    @inlinable
    public func modifyHostStatus(hostsStatus: [HostStatus], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostStatusResponse {
        try await self.modifyHostStatus(.init(hostsStatus: hostsStatus), region: region, logger: logger, on: eventLoop)
    }
}