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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tic {
    /// UpdateStackVersion请求参数结构体
    public struct UpdateStackVersionRequest: TCRequestModel {
        /// 待更新的版本ID
        public let versionId: String

        /// 模板 URL，⽬前仅限 COS URL, ⽂件为zip压缩格式
        public let templateUrl: String

        /// 版本名称，不得超过60个字符
        public let versionName: String?

        /// 版本描述，不得超过200个字符
        public let description: String?

        public init(versionId: String, templateUrl: String, versionName: String? = nil, description: String? = nil) {
            self.versionId = versionId
            self.templateUrl = templateUrl
            self.versionName = versionName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case templateUrl = "TemplateUrl"
            case versionName = "VersionName"
            case description = "Description"
        }
    }

    /// UpdateStackVersion返回参数结构体
    public struct UpdateStackVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新资源栈版本的内容
    ///
    /// 本接口（UpdateStackVersion）用于更新一个版本的模版内容，名称或描述，模版仅限COS URL，且为zip格式。
    @inlinable @discardableResult
    public func updateStackVersion(_ input: UpdateStackVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateStackVersionResponse> {
        self.client.execute(action: "UpdateStackVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新资源栈版本的内容
    ///
    /// 本接口（UpdateStackVersion）用于更新一个版本的模版内容，名称或描述，模版仅限COS URL，且为zip格式。
    @inlinable @discardableResult
    public func updateStackVersion(_ input: UpdateStackVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStackVersionResponse {
        try await self.client.execute(action: "UpdateStackVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新资源栈版本的内容
    ///
    /// 本接口（UpdateStackVersion）用于更新一个版本的模版内容，名称或描述，模版仅限COS URL，且为zip格式。
    @inlinable @discardableResult
    public func updateStackVersion(versionId: String, templateUrl: String, versionName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateStackVersionResponse> {
        self.updateStackVersion(.init(versionId: versionId, templateUrl: templateUrl, versionName: versionName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新资源栈版本的内容
    ///
    /// 本接口（UpdateStackVersion）用于更新一个版本的模版内容，名称或描述，模版仅限COS URL，且为zip格式。
    @inlinable @discardableResult
    public func updateStackVersion(versionId: String, templateUrl: String, versionName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStackVersionResponse {
        try await self.updateStackVersion(.init(versionId: versionId, templateUrl: templateUrl, versionName: versionName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
