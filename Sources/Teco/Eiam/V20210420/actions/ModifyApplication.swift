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

extension Eiam {
    /// ModifyApplication请求参数结构体
    public struct ModifyApplicationRequest: TCRequestModel {
        /// 应用ID，是应用的全局唯一标识。
        public let applicationId: String

        /// 安全级别。
        public let secureLevel: String?

        /// 应用展示名称，长度限制：32个字符。 默认与应用名字相同。
        public let displayName: String?

        /// 应用状态，true表示启用，false表示禁用。
        public let appStatus: Bool?

        /// 应用图标图片访问地址。
        public let iconUrl: String?

        /// 描述。长度不超过128。
        public let description: String?

        public init(applicationId: String, secureLevel: String? = nil, displayName: String? = nil, appStatus: Bool? = nil, iconUrl: String? = nil, description: String? = nil) {
            self.applicationId = applicationId
            self.secureLevel = secureLevel
            self.displayName = displayName
            self.appStatus = appStatus
            self.iconUrl = iconUrl
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case secureLevel = "SecureLevel"
            case displayName = "DisplayName"
            case appStatus = "AppStatus"
            case iconUrl = "IconUrl"
            case description = "Description"
        }
    }

    /// ModifyApplication返回参数结构体
    public struct ModifyApplicationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新应用
    ///
    /// 更新一个应用的信息
    @inlinable @discardableResult
    public func modifyApplication(_ input: ModifyApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationResponse> {
        self.client.execute(action: "ModifyApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新应用
    ///
    /// 更新一个应用的信息
    @inlinable @discardableResult
    public func modifyApplication(_ input: ModifyApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationResponse {
        try await self.client.execute(action: "ModifyApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新应用
    ///
    /// 更新一个应用的信息
    @inlinable @discardableResult
    public func modifyApplication(applicationId: String, secureLevel: String? = nil, displayName: String? = nil, appStatus: Bool? = nil, iconUrl: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationResponse> {
        self.modifyApplication(ModifyApplicationRequest(applicationId: applicationId, secureLevel: secureLevel, displayName: displayName, appStatus: appStatus, iconUrl: iconUrl, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新应用
    ///
    /// 更新一个应用的信息
    @inlinable @discardableResult
    public func modifyApplication(applicationId: String, secureLevel: String? = nil, displayName: String? = nil, appStatus: Bool? = nil, iconUrl: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationResponse {
        try await self.modifyApplication(ModifyApplicationRequest(applicationId: applicationId, secureLevel: secureLevel, displayName: displayName, appStatus: appStatus, iconUrl: iconUrl, description: description), region: region, logger: logger, on: eventLoop)
    }
}
