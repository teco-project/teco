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
    /// ModifyLiveSnapshotTemplate请求参数结构体
    public struct ModifyLiveSnapshotTemplateRequest: TCRequestModel {
        /// 模板 ID。
        public let templateId: Int64

        /// Cos 应用 ID。
        /// **注：此参数现在须必选。**
        public let cosAppId: Int64

        /// Cos Bucket名称。
        /// 注：CosBucket参数值不能包含-[appid] 部分。
        /// **注：此参数现在须必选。**
        public let cosBucket: String

        /// Cos 地域。
        /// **注：此参数现在须必选。**
        public let cosRegion: String

        /// 模板名称。
        /// 长度上限：255字节。
        public let templateName: String?

        /// 描述信息。
        /// 长度上限：1024字节。
        public let description: String?

        /// 截图间隔，单位s，默认10s。
        /// 范围： 5s ~ 300s。
        public let snapshotInterval: Int64?

        /// 截图宽度。默认：0（原始宽）。
        public let width: Int64?

        /// 截图高度。默认：0（原始高）。
        public let height: Int64?

        /// 是否开启鉴黄，默认 0 。
        /// 0：不开启。
        /// 1：开启。
        public let pornFlag: Int64?

        /// Cos Bucket文件夹前缀。
        public let cosPrefix: String?

        /// Cos 文件名称。
        public let cosFileName: String?

        public init(templateId: Int64, cosAppId: Int64, cosBucket: String, cosRegion: String, templateName: String? = nil, description: String? = nil, snapshotInterval: Int64? = nil, width: Int64? = nil, height: Int64? = nil, pornFlag: Int64? = nil, cosPrefix: String? = nil, cosFileName: String? = nil) {
            self.templateId = templateId
            self.cosAppId = cosAppId
            self.cosBucket = cosBucket
            self.cosRegion = cosRegion
            self.templateName = templateName
            self.description = description
            self.snapshotInterval = snapshotInterval
            self.width = width
            self.height = height
            self.pornFlag = pornFlag
            self.cosPrefix = cosPrefix
            self.cosFileName = cosFileName
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case cosAppId = "CosAppId"
            case cosBucket = "CosBucket"
            case cosRegion = "CosRegion"
            case templateName = "TemplateName"
            case description = "Description"
            case snapshotInterval = "SnapshotInterval"
            case width = "Width"
            case height = "Height"
            case pornFlag = "PornFlag"
            case cosPrefix = "CosPrefix"
            case cosFileName = "CosFileName"
        }
    }

    /// ModifyLiveSnapshotTemplate返回参数结构体
    public struct ModifyLiveSnapshotTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改截图模板
    ///
    /// 修改截图模板配置。
    @inlinable @discardableResult
    public func modifyLiveSnapshotTemplate(_ input: ModifyLiveSnapshotTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveSnapshotTemplateResponse> {
        self.client.execute(action: "ModifyLiveSnapshotTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改截图模板
    ///
    /// 修改截图模板配置。
    @inlinable @discardableResult
    public func modifyLiveSnapshotTemplate(_ input: ModifyLiveSnapshotTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveSnapshotTemplateResponse {
        try await self.client.execute(action: "ModifyLiveSnapshotTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改截图模板
    ///
    /// 修改截图模板配置。
    @inlinable @discardableResult
    public func modifyLiveSnapshotTemplate(templateId: Int64, cosAppId: Int64, cosBucket: String, cosRegion: String, templateName: String? = nil, description: String? = nil, snapshotInterval: Int64? = nil, width: Int64? = nil, height: Int64? = nil, pornFlag: Int64? = nil, cosPrefix: String? = nil, cosFileName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveSnapshotTemplateResponse> {
        self.modifyLiveSnapshotTemplate(.init(templateId: templateId, cosAppId: cosAppId, cosBucket: cosBucket, cosRegion: cosRegion, templateName: templateName, description: description, snapshotInterval: snapshotInterval, width: width, height: height, pornFlag: pornFlag, cosPrefix: cosPrefix, cosFileName: cosFileName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改截图模板
    ///
    /// 修改截图模板配置。
    @inlinable @discardableResult
    public func modifyLiveSnapshotTemplate(templateId: Int64, cosAppId: Int64, cosBucket: String, cosRegion: String, templateName: String? = nil, description: String? = nil, snapshotInterval: Int64? = nil, width: Int64? = nil, height: Int64? = nil, pornFlag: Int64? = nil, cosPrefix: String? = nil, cosFileName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveSnapshotTemplateResponse {
        try await self.modifyLiveSnapshotTemplate(.init(templateId: templateId, cosAppId: cosAppId, cosBucket: cosBucket, cosRegion: cosRegion, templateName: templateName, description: description, snapshotInterval: snapshotInterval, width: width, height: height, pornFlag: pornFlag, cosPrefix: cosPrefix, cosFileName: cosFileName), region: region, logger: logger, on: eventLoop)
    }
}
