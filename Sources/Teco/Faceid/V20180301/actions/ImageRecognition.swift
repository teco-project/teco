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

extension Faceid {
    /// ImageRecognition请求参数结构体
    public struct ImageRecognitionRequest: TCRequestModel {
        /// 身份证号
        public let idCard: String

        /// 姓名。中文请使用UTF-8编码。
        public let name: String

        /// 用于人脸比对的照片，图片的Base64值；
        /// Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        /// 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        public let imageBase64: String

        /// 本接口不需要传递此参数。
        public let optional: String?

        /// 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption?

        public init(idCard: String, name: String, imageBase64: String, optional: String? = nil, encryption: Encryption? = nil) {
            self.idCard = idCard
            self.name = name
            self.imageBase64 = imageBase64
            self.optional = optional
            self.encryption = encryption
        }

        enum CodingKeys: String, CodingKey {
            case idCard = "IdCard"
            case name = "Name"
            case imageBase64 = "ImageBase64"
            case optional = "Optional"
            case encryption = "Encryption"
        }
    }

    /// ImageRecognition返回参数结构体
    public struct ImageRecognitionResponse: TCResponseModel {
        /// 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        public let sim: Float

        /// 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        public let result: String

        /// 业务结果描述。
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sim = "Sim"
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 照片人脸核身
    ///
    /// 传入照片和身份信息，判断该照片与权威库的证件照是否属于同一个人。
    @inlinable
    public func imageRecognition(_ input: ImageRecognitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageRecognitionResponse> {
        self.client.execute(action: "ImageRecognition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 照片人脸核身
    ///
    /// 传入照片和身份信息，判断该照片与权威库的证件照是否属于同一个人。
    @inlinable
    public func imageRecognition(_ input: ImageRecognitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageRecognitionResponse {
        try await self.client.execute(action: "ImageRecognition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 照片人脸核身
    ///
    /// 传入照片和身份信息，判断该照片与权威库的证件照是否属于同一个人。
    @inlinable
    public func imageRecognition(idCard: String, name: String, imageBase64: String, optional: String? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageRecognitionResponse> {
        self.imageRecognition(ImageRecognitionRequest(idCard: idCard, name: name, imageBase64: imageBase64, optional: optional, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }

    /// 照片人脸核身
    ///
    /// 传入照片和身份信息，判断该照片与权威库的证件照是否属于同一个人。
    @inlinable
    public func imageRecognition(idCard: String, name: String, imageBase64: String, optional: String? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageRecognitionResponse {
        try await self.imageRecognition(ImageRecognitionRequest(idCard: idCard, name: name, imageBase64: imageBase64, optional: optional, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }
}
