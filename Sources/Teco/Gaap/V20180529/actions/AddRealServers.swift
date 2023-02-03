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

extension Gaap {
    /// AddRealServers请求参数结构体
    public struct AddRealServersRequest: TCRequestModel {
        /// 源站对应的项目ID
        public let projectId: UInt64

        /// 源站对应的IP或域名
        public let realServerIP: [String]

        /// 源站名称
        public let realServerName: String

        /// 标签列表
        public let tagSet: [TagPair]?

        public init(projectId: UInt64, realServerIP: [String], realServerName: String, tagSet: [TagPair]? = nil) {
            self.projectId = projectId
            self.realServerIP = realServerIP
            self.realServerName = realServerName
            self.tagSet = tagSet
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case realServerIP = "RealServerIP"
            case realServerName = "RealServerName"
            case tagSet = "TagSet"
        }
    }

    /// AddRealServers返回参数结构体
    public struct AddRealServersResponse: TCResponseModel {
        /// 源站信息列表
        public let realServerSet: [NewRealServer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case realServerSet = "RealServerSet"
            case requestId = "RequestId"
        }
    }

    /// 添加源站
    ///
    /// 添加源站(服务器)信息，支持IP或域名
    @inlinable
    public func addRealServers(_ input: AddRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddRealServersResponse> {
        self.client.execute(action: "AddRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加源站
    ///
    /// 添加源站(服务器)信息，支持IP或域名
    @inlinable
    public func addRealServers(_ input: AddRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddRealServersResponse {
        try await self.client.execute(action: "AddRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加源站
    ///
    /// 添加源站(服务器)信息，支持IP或域名
    @inlinable
    public func addRealServers(projectId: UInt64, realServerIP: [String], realServerName: String, tagSet: [TagPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddRealServersResponse> {
        let input = AddRealServersRequest(projectId: projectId, realServerIP: realServerIP, realServerName: realServerName, tagSet: tagSet)
        return self.client.execute(action: "AddRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加源站
    ///
    /// 添加源站(服务器)信息，支持IP或域名
    @inlinable
    public func addRealServers(projectId: UInt64, realServerIP: [String], realServerName: String, tagSet: [TagPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddRealServersResponse {
        let input = AddRealServersRequest(projectId: projectId, realServerIP: realServerIP, realServerName: realServerName, tagSet: tagSet)
        return try await self.client.execute(action: "AddRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
