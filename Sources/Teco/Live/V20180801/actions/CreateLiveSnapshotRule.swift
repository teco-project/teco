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

extension Live {
    /// CreateLiveSnapshotRule请求参数结构体
    public struct CreateLiveSnapshotRuleRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String

        /// 模板 ID。
        public let templateId: Int64

        /// 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        public let appName: String?

        /// 流名称。
        /// 注：如果本参数设置为非空字符串，规则将只对此推流起作用。
        public let streamName: String?

        public init(domainName: String, templateId: Int64, appName: String? = nil, streamName: String? = nil) {
            self.domainName = domainName
            self.templateId = templateId
            self.appName = appName
            self.streamName = streamName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case templateId = "TemplateId"
            case appName = "AppName"
            case streamName = "StreamName"
        }
    }

    /// CreateLiveSnapshotRule返回参数结构体
    public struct CreateLiveSnapshotRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建截图规则
    ///
    /// 创建截图规则，需要先调用[CreateLiveSnapshotTemplate](/document/product/267/32624)接口创建截图模板，然后将返回的模板 ID 绑定到流进行使用。
    /// <br>截图相关文档：[直播截图](/document/product/267/32737)。
    /// 注意：单个域名仅支持关联一个截图模板。
    @inlinable @discardableResult
    public func createLiveSnapshotRule(_ input: CreateLiveSnapshotRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveSnapshotRuleResponse> {
        self.client.execute(action: "CreateLiveSnapshotRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建截图规则
    ///
    /// 创建截图规则，需要先调用[CreateLiveSnapshotTemplate](/document/product/267/32624)接口创建截图模板，然后将返回的模板 ID 绑定到流进行使用。
    /// <br>截图相关文档：[直播截图](/document/product/267/32737)。
    /// 注意：单个域名仅支持关联一个截图模板。
    @inlinable @discardableResult
    public func createLiveSnapshotRule(_ input: CreateLiveSnapshotRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveSnapshotRuleResponse {
        try await self.client.execute(action: "CreateLiveSnapshotRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建截图规则
    ///
    /// 创建截图规则，需要先调用[CreateLiveSnapshotTemplate](/document/product/267/32624)接口创建截图模板，然后将返回的模板 ID 绑定到流进行使用。
    /// <br>截图相关文档：[直播截图](/document/product/267/32737)。
    /// 注意：单个域名仅支持关联一个截图模板。
    @inlinable @discardableResult
    public func createLiveSnapshotRule(domainName: String, templateId: Int64, appName: String? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveSnapshotRuleResponse> {
        self.createLiveSnapshotRule(.init(domainName: domainName, templateId: templateId, appName: appName, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建截图规则
    ///
    /// 创建截图规则，需要先调用[CreateLiveSnapshotTemplate](/document/product/267/32624)接口创建截图模板，然后将返回的模板 ID 绑定到流进行使用。
    /// <br>截图相关文档：[直播截图](/document/product/267/32737)。
    /// 注意：单个域名仅支持关联一个截图模板。
    @inlinable @discardableResult
    public func createLiveSnapshotRule(domainName: String, templateId: Int64, appName: String? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveSnapshotRuleResponse {
        try await self.createLiveSnapshotRule(.init(domainName: domainName, templateId: templateId, appName: appName, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }
}
