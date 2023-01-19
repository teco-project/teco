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

extension Tci {
    /// CreateFace请求参数结构体
    public struct CreateFaceRequest: TCRequestModel {
        /// 人员唯一标识符
        public let personId: String

        /// 图片数据 base64 字符串，与 Urls 参数选择一个输入
        public let images: [String]?

        /// 人员库唯一标识符
        public let libraryId: String?

        /// 图片下载地址，与 Images 参数选择一个输入
        public let urls: [String]?

        public init(personId: String, images: [String]? = nil, libraryId: String? = nil, urls: [String]? = nil) {
            self.personId = personId
            self.images = images
            self.libraryId = libraryId
            self.urls = urls
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case images = "Images"
            case libraryId = "LibraryId"
            case urls = "Urls"
        }
    }

    /// CreateFace返回参数结构体
    public struct CreateFaceResponse: TCResponseModel {
        /// 人脸操作结果信息
        public let faceInfoSet: [FaceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case faceInfoSet = "FaceInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 创建人脸
    @inlinable
    public func createFace(_ input: CreateFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFaceResponse> {
        self.client.execute(action: "CreateFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建人脸
    @inlinable
    public func createFace(_ input: CreateFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFaceResponse {
        try await self.client.execute(action: "CreateFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建人脸
    @inlinable
    public func createFace(personId: String, images: [String]? = nil, libraryId: String? = nil, urls: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFaceResponse> {
        self.createFace(CreateFaceRequest(personId: personId, images: images, libraryId: libraryId, urls: urls), region: region, logger: logger, on: eventLoop)
    }

    /// 创建人脸
    @inlinable
    public func createFace(personId: String, images: [String]? = nil, libraryId: String? = nil, urls: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFaceResponse {
        try await self.createFace(CreateFaceRequest(personId: personId, images: images, libraryId: libraryId, urls: urls), region: region, logger: logger, on: eventLoop)
    }
}
