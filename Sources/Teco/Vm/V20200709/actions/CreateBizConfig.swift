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

extension Vm {
    /// CreateBizConfig请求参数结构体
    public struct CreateBizConfigRequest: TCRequestModel {
        /// 业务ID，仅限英文字母、数字和下划线（_）组成，长度不超过8位
        public let bizType: String

        /// 审核分类信息
        public let mediaModeration: MediaModerationConfig

        /// 业务名称，用于标识业务场景，长度不超过32位
        public let bizName: String?

        /// 审核内容，可选：Polity (政治); Porn (色情); Illegal(违法);Abuse (谩骂); Terror (暴恐); Ad (广告); Custom (自定义);
        public let moderationCategories: [String]?

        public init(bizType: String, mediaModeration: MediaModerationConfig, bizName: String? = nil, moderationCategories: [String]? = nil) {
            self.bizType = bizType
            self.mediaModeration = mediaModeration
            self.bizName = bizName
            self.moderationCategories = moderationCategories
        }

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case mediaModeration = "MediaModeration"
            case bizName = "BizName"
            case moderationCategories = "ModerationCategories"
        }
    }

    /// CreateBizConfig返回参数结构体
    public struct CreateBizConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建业务配置
    ///
    /// 创建业务配置，1个账号最多可以创建20个配置，可定义音频审核的场景，如色情、谩骂等，
    ///
    /// 在创建业务配置之前，你需要以下步骤：
    /// 1. 开通COS存储捅功能，新建存储桶，例如 cms_segments，用来存储 视频转换过程中生成对音频和图片。
    /// 2. 然后在COS控制台，授权天御内容安全主账号 对 cms_segments 存储桶对读写权限。具体授权操作，参考https://cloud.tencent.com/document/product/436/38648
    @inlinable @discardableResult
    public func createBizConfig(_ input: CreateBizConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBizConfigResponse> {
        self.client.execute(action: "CreateBizConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建业务配置
    ///
    /// 创建业务配置，1个账号最多可以创建20个配置，可定义音频审核的场景，如色情、谩骂等，
    ///
    /// 在创建业务配置之前，你需要以下步骤：
    /// 1. 开通COS存储捅功能，新建存储桶，例如 cms_segments，用来存储 视频转换过程中生成对音频和图片。
    /// 2. 然后在COS控制台，授权天御内容安全主账号 对 cms_segments 存储桶对读写权限。具体授权操作，参考https://cloud.tencent.com/document/product/436/38648
    @inlinable @discardableResult
    public func createBizConfig(_ input: CreateBizConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBizConfigResponse {
        try await self.client.execute(action: "CreateBizConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建业务配置
    ///
    /// 创建业务配置，1个账号最多可以创建20个配置，可定义音频审核的场景，如色情、谩骂等，
    ///
    /// 在创建业务配置之前，你需要以下步骤：
    /// 1. 开通COS存储捅功能，新建存储桶，例如 cms_segments，用来存储 视频转换过程中生成对音频和图片。
    /// 2. 然后在COS控制台，授权天御内容安全主账号 对 cms_segments 存储桶对读写权限。具体授权操作，参考https://cloud.tencent.com/document/product/436/38648
    @inlinable @discardableResult
    public func createBizConfig(bizType: String, mediaModeration: MediaModerationConfig, bizName: String? = nil, moderationCategories: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBizConfigResponse> {
        self.createBizConfig(.init(bizType: bizType, mediaModeration: mediaModeration, bizName: bizName, moderationCategories: moderationCategories), region: region, logger: logger, on: eventLoop)
    }

    /// 创建业务配置
    ///
    /// 创建业务配置，1个账号最多可以创建20个配置，可定义音频审核的场景，如色情、谩骂等，
    ///
    /// 在创建业务配置之前，你需要以下步骤：
    /// 1. 开通COS存储捅功能，新建存储桶，例如 cms_segments，用来存储 视频转换过程中生成对音频和图片。
    /// 2. 然后在COS控制台，授权天御内容安全主账号 对 cms_segments 存储桶对读写权限。具体授权操作，参考https://cloud.tencent.com/document/product/436/38648
    @inlinable @discardableResult
    public func createBizConfig(bizType: String, mediaModeration: MediaModerationConfig, bizName: String? = nil, moderationCategories: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBizConfigResponse {
        try await self.createBizConfig(.init(bizType: bizType, mediaModeration: mediaModeration, bizName: bizName, moderationCategories: moderationCategories), region: region, logger: logger, on: eventLoop)
    }
}
