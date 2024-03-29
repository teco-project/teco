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

extension Tmt {
    /// ImageTranslate请求参数结构体
    public struct ImageTranslateRequest: TCRequest {
        /// 唯一id，返回时原样返回
        public let sessionUuid: String

        /// doc:文档扫描
        public let scene: String

        /// 图片数据的Base64字符串，图片大小上限为4M，建议对源图片进行一定程度压缩
        public let data: String

        /// 源语言，支持语言列表：
        /// - auto：自动识别（识别为一种语言）
        /// - zh：简体中文
        /// - zh-TW：繁体中文
        /// - en：英语
        /// - ja：日语
        /// - ko：韩语
        /// - ru：俄语
        /// - fr：法语
        /// - de：德语
        /// - it：意大利语
        /// - es：西班牙语
        /// - pt：葡萄牙语
        /// - ms：马来西亚语
        /// - th：泰语
        /// - vi：越南语
        public let source: String

        /// 目标语言，各源语言的目标语言支持列表如下：
        /// - zh（简体中文）：en（英语）、ja（日语）、ko（韩语）、ru（俄语）、fr（法语）、de（德语）、it（意大利语）、es（西班牙语）、pt（葡萄牙语）、ms（马来语）、th（泰语）、vi（越南语）
        /// - zh-TW（繁体中文）：en（英语）、ja（日语）、ko（韩语）、ru（俄语）、fr（法语）、de（德语）、it（意大利语）、es（西班牙语）、pt（葡萄牙语）、ms（马来语）、th（泰语）、vi（越南语）
        /// - en（英语）：zh（中文）、ja（日语）、ko（韩语）、ru（俄语）、fr（法语）、de（德语）、it（意大利语）、es（西班牙语）、pt（葡萄牙语）、ms（马来语）、th（泰语）、vi（越南语）
        /// - ja（日语）：zh（中文）、en（英语）、ko（韩语）
        /// - ko（韩语）：zh（中文）、en（英语）、ja（日语）
        /// - ru：俄语：zh（中文）、en（英语）
        /// - fr：法语：zh（中文）、en（英语）
        /// - de：德语：zh（中文）、en（英语）
        /// - it：意大利语：zh（中文）、en（英语）
        /// - es：西班牙语：zh（中文）、en（英语）
        /// - pt：葡萄牙语：zh（中文）、en（英语）
        /// - ms：马来西亚语：zh（中文）、en（英语）
        /// - th：泰语：zh（中文）、en（英语）
        /// - vi：越南语：zh（中文）、en（英语）
        public let target: String

        /// 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        public let projectId: Int64

        public init(sessionUuid: String, scene: String, data: String, source: String, target: String, projectId: Int64) {
            self.sessionUuid = sessionUuid
            self.scene = scene
            self.data = data
            self.source = source
            self.target = target
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case sessionUuid = "SessionUuid"
            case scene = "Scene"
            case data = "Data"
            case source = "Source"
            case target = "Target"
            case projectId = "ProjectId"
        }
    }

    /// ImageTranslate返回参数结构体
    public struct ImageTranslateResponse: TCResponse {
        /// 请求的SessionUuid返回
        public let sessionUuid: String

        /// 源语言
        public let source: String

        /// 目标语言
        public let target: String

        /// 图片翻译结果，翻译结果按识别的文本每一行独立翻译，后续会推出按段落划分并翻译的版本
        public let imageRecord: ImageRecord

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sessionUuid = "SessionUuid"
            case source = "Source"
            case target = "Target"
            case imageRecord = "ImageRecord"
            case requestId = "RequestId"
        }
    }

    /// 图片翻译
    ///
    /// 提供13种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。
    ///
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func imageTranslate(_ input: ImageTranslateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageTranslateResponse> {
        self.client.execute(action: "ImageTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片翻译
    ///
    /// 提供13种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。
    ///
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func imageTranslate(_ input: ImageTranslateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageTranslateResponse {
        try await self.client.execute(action: "ImageTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片翻译
    ///
    /// 提供13种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。
    ///
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func imageTranslate(sessionUuid: String, scene: String, data: String, source: String, target: String, projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageTranslateResponse> {
        self.imageTranslate(.init(sessionUuid: sessionUuid, scene: scene, data: data, source: source, target: target, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 图片翻译
    ///
    /// 提供13种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。
    ///
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func imageTranslate(sessionUuid: String, scene: String, data: String, source: String, target: String, projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageTranslateResponse {
        try await self.imageTranslate(.init(sessionUuid: sessionUuid, scene: scene, data: data, source: source, target: target, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
