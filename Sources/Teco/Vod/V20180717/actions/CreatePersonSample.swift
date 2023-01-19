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

extension Vod {
    /// CreatePersonSample请求参数结构体
    public struct CreatePersonSampleRequest: TCRequestModel {
        /// 素材名称，长度限制：20 个字符。
        public let name: String

        /// 素材应用场景，可选值：
        /// 1. Recognition：用于内容识别，等价于 Recognition.Face。
        /// 2. Review：用于内容不适宜，等价于 Review.Face。
        /// 3. All：包含以上全部，等价于 1+2。
        public let usages: [String]

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 素材描述，长度限制：1024 个字符。
        public let description: String?

        /// 素材图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 jpeg、png 图片格式。数组长度限制：5 张图片。
        /// 注意：图片必须是单人像五官较清晰的照片，像素不低于 200*200。
        public let faceContents: [String]?

        /// 素材标签
        /// <li>数组长度限制：20 个标签；</li>
        /// <li>单个标签长度限制：128 个字符。</li>
        public let tags: [String]?

        public init(name: String, usages: [String], subAppId: UInt64? = nil, description: String? = nil, faceContents: [String]? = nil, tags: [String]? = nil) {
            self.name = name
            self.usages = usages
            self.subAppId = subAppId
            self.description = description
            self.faceContents = faceContents
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case usages = "Usages"
            case subAppId = "SubAppId"
            case description = "Description"
            case faceContents = "FaceContents"
            case tags = "Tags"
        }
    }

    /// CreatePersonSample返回参数结构体
    public struct CreatePersonSampleResponse: TCResponseModel {
        /// 素材信息。
        public let person: AiSamplePerson

        /// 处理失败的五官定位信息。
        public let failFaceInfoSet: [AiSampleFailFaceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case person = "Person"
            case failFaceInfoSet = "FailFaceInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 创建素材样本
    ///
    /// 该接口用于创建素材样本，用于通过五官定位等技术，进行内容识别、不适宜视频识别等视频处理。
    @inlinable
    public func createPersonSample(_ input: CreatePersonSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePersonSampleResponse> {
        self.client.execute(action: "CreatePersonSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建素材样本
    ///
    /// 该接口用于创建素材样本，用于通过五官定位等技术，进行内容识别、不适宜视频识别等视频处理。
    @inlinable
    public func createPersonSample(_ input: CreatePersonSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePersonSampleResponse {
        try await self.client.execute(action: "CreatePersonSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建素材样本
    ///
    /// 该接口用于创建素材样本，用于通过五官定位等技术，进行内容识别、不适宜视频识别等视频处理。
    @inlinable
    public func createPersonSample(name: String, usages: [String], subAppId: UInt64? = nil, description: String? = nil, faceContents: [String]? = nil, tags: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePersonSampleResponse> {
        self.createPersonSample(CreatePersonSampleRequest(name: name, usages: usages, subAppId: subAppId, description: description, faceContents: faceContents, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建素材样本
    ///
    /// 该接口用于创建素材样本，用于通过五官定位等技术，进行内容识别、不适宜视频识别等视频处理。
    @inlinable
    public func createPersonSample(name: String, usages: [String], subAppId: UInt64? = nil, description: String? = nil, faceContents: [String]? = nil, tags: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePersonSampleResponse {
        try await self.createPersonSample(CreatePersonSampleRequest(name: name, usages: usages, subAppId: subAppId, description: description, faceContents: faceContents, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
