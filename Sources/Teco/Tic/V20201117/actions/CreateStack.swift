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

extension Tic {
    /// CreateStack请求参数结构体
    public struct CreateStackRequest: TCRequestModel {
        /// 资源栈名称，不得超过60个字符
        public let stackName: String

        /// 资源栈所在地域
        public let stackRegion: String

        /// HCL模板URL，⽬前仅限 COS URL, ⽂件为zip压缩格式
        public let templateUrl: String

        /// 资源栈描述，不得超过200个字符
        public let description: String?

        public init(stackName: String, stackRegion: String, templateUrl: String, description: String? = nil) {
            self.stackName = stackName
            self.stackRegion = stackRegion
            self.templateUrl = templateUrl
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case stackName = "StackName"
            case stackRegion = "StackRegion"
            case templateUrl = "TemplateUrl"
            case description = "Description"
        }
    }

    /// CreateStack返回参数结构体
    public struct CreateStackResponse: TCResponseModel {
        /// 创建得到的资源栈ID
        public let stackId: String

        /// 资源栈版本ID
        public let versionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case stackId = "StackId"
            case versionId = "VersionId"
            case requestId = "RequestId"
        }
    }

    /// 创建资源栈
    ///
    /// 本接口（CreateStack）用于通过传递一个COS的terraform zip模版URL来创建一个资源栈。创建资源栈后仍需要用户调用对应的plan, apply, destory执行对应的事件。
    @inlinable
    public func createStack(_ input: CreateStackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStackResponse> {
        self.client.execute(action: "CreateStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建资源栈
    ///
    /// 本接口（CreateStack）用于通过传递一个COS的terraform zip模版URL来创建一个资源栈。创建资源栈后仍需要用户调用对应的plan, apply, destory执行对应的事件。
    @inlinable
    public func createStack(_ input: CreateStackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStackResponse {
        try await self.client.execute(action: "CreateStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建资源栈
    ///
    /// 本接口（CreateStack）用于通过传递一个COS的terraform zip模版URL来创建一个资源栈。创建资源栈后仍需要用户调用对应的plan, apply, destory执行对应的事件。
    @inlinable
    public func createStack(stackName: String, stackRegion: String, templateUrl: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStackResponse> {
        self.createStack(.init(stackName: stackName, stackRegion: stackRegion, templateUrl: templateUrl, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建资源栈
    ///
    /// 本接口（CreateStack）用于通过传递一个COS的terraform zip模版URL来创建一个资源栈。创建资源栈后仍需要用户调用对应的plan, apply, destory执行对应的事件。
    @inlinable
    public func createStack(stackName: String, stackRegion: String, templateUrl: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStackResponse {
        try await self.createStack(.init(stackName: stackName, stackRegion: stackRegion, templateUrl: templateUrl, description: description), region: region, logger: logger, on: eventLoop)
    }
}
