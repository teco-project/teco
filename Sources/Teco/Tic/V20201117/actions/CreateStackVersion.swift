//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tic {
    /// CreateStackVersion请求参数结构体
    public struct CreateStackVersionRequest: TCRequestModel {
        /// 待增加版本的资源栈ID
        public let stackId: String

        /// 模板 URL，⽬前仅限 COS URL, ⽂件为zip压缩格式
        public let templateUrl: String

        /// 版本名称，不得超过60个字符
        public let versionName: String?

        /// 版本描述，不得超过200个字符
        public let description: String?

        public init(stackId: String, templateUrl: String, versionName: String? = nil, description: String? = nil) {
            self.stackId = stackId
            self.templateUrl = templateUrl
            self.versionName = versionName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case stackId = "StackId"
            case templateUrl = "TemplateUrl"
            case versionName = "VersionName"
            case description = "Description"
        }
    }

    /// CreateStackVersion返回参数结构体
    public struct CreateStackVersionResponse: TCResponseModel {
        /// 新创建的版本ID
        public let versionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case requestId = "RequestId"
        }
    }

    /// 给资源栈新增一个版本
    ///
    /// 本接口（CreateStackVersion）用于给资源栈新增一个HCL模版版本，仅限COS链接，且为zip格式。
    @inlinable
    public func createStackVersion(_ input: CreateStackVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStackVersionResponse> {
        self.client.execute(action: "CreateStackVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 给资源栈新增一个版本
    ///
    /// 本接口（CreateStackVersion）用于给资源栈新增一个HCL模版版本，仅限COS链接，且为zip格式。
    @inlinable
    public func createStackVersion(_ input: CreateStackVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStackVersionResponse {
        try await self.client.execute(action: "CreateStackVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 给资源栈新增一个版本
    ///
    /// 本接口（CreateStackVersion）用于给资源栈新增一个HCL模版版本，仅限COS链接，且为zip格式。
    @inlinable
    public func createStackVersion(stackId: String, templateUrl: String, versionName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStackVersionResponse> {
        self.createStackVersion(CreateStackVersionRequest(stackId: stackId, templateUrl: templateUrl, versionName: versionName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 给资源栈新增一个版本
    ///
    /// 本接口（CreateStackVersion）用于给资源栈新增一个HCL模版版本，仅限COS链接，且为zip格式。
    @inlinable
    public func createStackVersion(stackId: String, templateUrl: String, versionName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStackVersionResponse {
        try await self.createStackVersion(CreateStackVersionRequest(stackId: stackId, templateUrl: templateUrl, versionName: versionName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
