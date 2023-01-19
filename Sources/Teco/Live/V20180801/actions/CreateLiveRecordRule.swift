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

extension Live {
    /// CreateLiveRecordRule请求参数结构体
    public struct CreateLiveRecordRuleRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String

        /// 模板 ID。
        public let templateId: Int64

        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
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

    /// CreateLiveRecordRule返回参数结构体
    public struct CreateLiveRecordRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建录制规则
    ///
    /// 创建录制规则，需要先调用[CreateLiveRecordTemplate](/document/product/267/32614)接口创建录制模板，将返回的模板id绑定到流使用。
    /// <br>录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordRule(_ input: CreateLiveRecordRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordRuleResponse> {
        self.client.execute(action: "CreateLiveRecordRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建录制规则
    ///
    /// 创建录制规则，需要先调用[CreateLiveRecordTemplate](/document/product/267/32614)接口创建录制模板，将返回的模板id绑定到流使用。
    /// <br>录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordRule(_ input: CreateLiveRecordRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordRuleResponse {
        try await self.client.execute(action: "CreateLiveRecordRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建录制规则
    ///
    /// 创建录制规则，需要先调用[CreateLiveRecordTemplate](/document/product/267/32614)接口创建录制模板，将返回的模板id绑定到流使用。
    /// <br>录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordRule(domainName: String, templateId: Int64, appName: String? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordRuleResponse> {
        self.createLiveRecordRule(CreateLiveRecordRuleRequest(domainName: domainName, templateId: templateId, appName: appName, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建录制规则
    ///
    /// 创建录制规则，需要先调用[CreateLiveRecordTemplate](/document/product/267/32614)接口创建录制模板，将返回的模板id绑定到流使用。
    /// <br>录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordRule(domainName: String, templateId: Int64, appName: String? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordRuleResponse {
        try await self.createLiveRecordRule(CreateLiveRecordRuleRequest(domainName: domainName, templateId: templateId, appName: appName, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }
}
