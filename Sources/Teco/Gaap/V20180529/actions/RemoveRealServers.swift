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

extension Gaap {
    /// RemoveRealServers请求参数结构体
    public struct RemoveRealServersRequest: TCRequestModel {
        /// 源站Id列表
        public let realServerIds: [String]

        public init(realServerIds: [String]) {
            self.realServerIds = realServerIds
        }

        enum CodingKeys: String, CodingKey {
            case realServerIds = "RealServerIds"
        }
    }

    /// RemoveRealServers返回参数结构体
    public struct RemoveRealServersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除源站
    ///
    /// 删除已添加的源站(服务器)IP或域名
    @inlinable
    public func removeRealServers(_ input: RemoveRealServersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveRealServersResponse > {
        self.client.execute(action: "RemoveRealServers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除源站
    ///
    /// 删除已添加的源站(服务器)IP或域名
    @inlinable
    public func removeRealServers(_ input: RemoveRealServersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveRealServersResponse {
        try await self.client.execute(action: "RemoveRealServers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除源站
    ///
    /// 删除已添加的源站(服务器)IP或域名
    @inlinable
    public func removeRealServers(realServerIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveRealServersResponse > {
        self.removeRealServers(RemoveRealServersRequest(realServerIds: realServerIds), logger: logger, on: eventLoop)
    }

    /// 删除源站
    ///
    /// 删除已添加的源站(服务器)IP或域名
    @inlinable
    public func removeRealServers(realServerIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveRealServersResponse {
        try await self.removeRealServers(RemoveRealServersRequest(realServerIds: realServerIds), logger: logger, on: eventLoop)
    }
}
