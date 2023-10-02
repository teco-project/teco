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

extension Bi {
    /// CreateProject请求参数结构体
    public struct CreateProjectRequest: TCRequest {
        /// 项目名称
        public let name: String

        /// logo底色
        public let colorCode: String

        /// 项目Logo
        public let logo: String?

        /// 备注
        public let mark: String?

        /// 是否允许用户申请
        public let isApply: Bool?

        /// 默认看板
        public let defaultPanelType: Int64?

        public init(name: String, colorCode: String, logo: String? = nil, mark: String? = nil, isApply: Bool? = nil, defaultPanelType: Int64? = nil) {
            self.name = name
            self.colorCode = colorCode
            self.logo = logo
            self.mark = mark
            self.isApply = isApply
            self.defaultPanelType = defaultPanelType
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case colorCode = "ColorCode"
            case logo = "Logo"
            case mark = "Mark"
            case isApply = "IsApply"
            case defaultPanelType = "DefaultPanelType"
        }
    }

    /// CreateProject返回参数结构体
    public struct CreateProjectResponse: TCResponse {
        /// 额外数据
        public let extra: String

        /// 数据
        public let data: Data

        /// 返回信息
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case extra = "Extra"
            case data = "Data"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 创建项目
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建项目
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建项目
    @inlinable
    public func createProject(name: String, colorCode: String, logo: String? = nil, mark: String? = nil, isApply: Bool? = nil, defaultPanelType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.createProject(.init(name: name, colorCode: colorCode, logo: logo, mark: mark, isApply: isApply, defaultPanelType: defaultPanelType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建项目
    @inlinable
    public func createProject(name: String, colorCode: String, logo: String? = nil, mark: String? = nil, isApply: Bool? = nil, defaultPanelType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.createProject(.init(name: name, colorCode: colorCode, logo: logo, mark: mark, isApply: isApply, defaultPanelType: defaultPanelType), region: region, logger: logger, on: eventLoop)
    }
}