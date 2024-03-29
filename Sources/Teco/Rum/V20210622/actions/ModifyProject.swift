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

extension Rum {
    /// ModifyProject请求参数结构体
    public struct ModifyProjectRequest: TCRequest {
        /// 项目 id
        public let id: UInt64

        /// 项目名(可选，不为空且最长为 200)
        public let name: String?

        /// 项目网页地址(可选，最长为 256)
        public let url: String?

        /// 项目仓库地址(可选，最长为 256)
        public let repo: String?

        /// 项目需要转移到的实例 id(可选)
        public let instanceID: String?

        /// 项目采样率(可选)
        public let rate: String?

        /// 是否开启聚类(可选)
        public let enableURLGroup: UInt64?

        /// 项目类型(可接受值为 "web", "mp", "android", "ios", "node", "hippy", "weex", "viola", "rn")
        public let type: String?

        /// 项目描述(可选，最长为 1000)
        public let desc: String?

        public init(id: UInt64, name: String? = nil, url: String? = nil, repo: String? = nil, instanceID: String? = nil, rate: String? = nil, enableURLGroup: UInt64? = nil, type: String? = nil, desc: String? = nil) {
            self.id = id
            self.name = name
            self.url = url
            self.repo = repo
            self.instanceID = instanceID
            self.rate = rate
            self.enableURLGroup = enableURLGroup
            self.type = type
            self.desc = desc
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case name = "Name"
            case url = "URL"
            case repo = "Repo"
            case instanceID = "InstanceID"
            case rate = "Rate"
            case enableURLGroup = "EnableURLGroup"
            case type = "Type"
            case desc = "Desc"
        }
    }

    /// ModifyProject返回参数结构体
    public struct ModifyProjectResponse: TCResponse {
        /// 操作信息
        public let msg: String

        /// 项目id
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case id = "ID"
            case requestId = "RequestId"
        }
    }

    /// 修改 RUM 应用信息
    @inlinable
    public func modifyProject(_ input: ModifyProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectResponse> {
        self.client.execute(action: "ModifyProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 RUM 应用信息
    @inlinable
    public func modifyProject(_ input: ModifyProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectResponse {
        try await self.client.execute(action: "ModifyProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 RUM 应用信息
    @inlinable
    public func modifyProject(id: UInt64, name: String? = nil, url: String? = nil, repo: String? = nil, instanceID: String? = nil, rate: String? = nil, enableURLGroup: UInt64? = nil, type: String? = nil, desc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectResponse> {
        self.modifyProject(.init(id: id, name: name, url: url, repo: repo, instanceID: instanceID, rate: rate, enableURLGroup: enableURLGroup, type: type, desc: desc), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 RUM 应用信息
    @inlinable
    public func modifyProject(id: UInt64, name: String? = nil, url: String? = nil, repo: String? = nil, instanceID: String? = nil, rate: String? = nil, enableURLGroup: UInt64? = nil, type: String? = nil, desc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectResponse {
        try await self.modifyProject(.init(id: id, name: name, url: url, repo: repo, instanceID: instanceID, rate: rate, enableURLGroup: enableURLGroup, type: type, desc: desc), region: region, logger: logger, on: eventLoop)
    }
}
