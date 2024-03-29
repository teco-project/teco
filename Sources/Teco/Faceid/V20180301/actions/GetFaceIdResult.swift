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

extension Faceid {
    /// GetFaceIdResult请求参数结构体
    public struct GetFaceIdResultRequest: TCRequest {
        /// SDK人脸核身流程的标识，调用GetFaceIdToken接口时生成。
        public let faceIdToken: String

        /// 是否需要拉取视频，默认false不需要
        public let isNeedVideo: Bool?

        /// 是否需要拉取截帧，默认false不需要
        public let isNeedBestFrame: Bool?

        public init(faceIdToken: String, isNeedVideo: Bool? = nil, isNeedBestFrame: Bool? = nil) {
            self.faceIdToken = faceIdToken
            self.isNeedVideo = isNeedVideo
            self.isNeedBestFrame = isNeedBestFrame
        }

        enum CodingKeys: String, CodingKey {
            case faceIdToken = "FaceIdToken"
            case isNeedVideo = "IsNeedVideo"
            case isNeedBestFrame = "IsNeedBestFrame"
        }
    }

    /// GetFaceIdResult返回参数结构体
    public struct GetFaceIdResultResponse: TCResponse {
        /// 身份证
        public let idCard: String

        /// 姓名
        public let name: String

        /// 业务核验结果，参考https://cloud.tencent.com/document/product/1007/47912
        public let result: String

        /// 业务核验描述
        public let description: String

        /// 相似度，0-100，数值越大相似度越高
        public let similarity: Float

        /// 用户核验的视频base64，如果选择了使用cos，返回完整cos地址如https://bucket.cos.ap-guangzhou.myqcloud.com/objectKey
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoBase64: String?

        /// 用户核验视频的截帧base64，如果选择了使用cos，返回完整cos地址如https://bucket.cos.ap-guangzhou.myqcloud.com/objectKey
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrameBase64: String?

        /// 获取token时透传的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 设备风险标签，仅错误码返回1007（设备疑似被劫持）时返回风险标签。标签说明：
        /// 202、5001：设备疑似被Root
        /// 203、5004：设备疑似被注入
        /// 205：设备疑似被Hook
        /// 206：设备疑似虚拟运行环境
        /// 5007、1005：设备疑似摄像头被劫持
        /// 8000：设备疑似存在异常篡改行为
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceInfoTag: String?

        /// 行为风险标签，仅错误码返回1007（设备疑似被劫持）时返回风险标签。标签说明：
        /// 02：攻击风险
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskInfoTag: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case idCard = "IdCard"
            case name = "Name"
            case result = "Result"
            case description = "Description"
            case similarity = "Similarity"
            case videoBase64 = "VideoBase64"
            case bestFrameBase64 = "BestFrameBase64"
            case extra = "Extra"
            case deviceInfoTag = "DeviceInfoTag"
            case riskInfoTag = "RiskInfoTag"
            case requestId = "RequestId"
        }
    }

    /// 获取SDK核验结果
    ///
    /// 完成验证后，用FaceIdToken调用本接口获取结果信息，FaceIdToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getFaceIdResult(_ input: GetFaceIdResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFaceIdResultResponse> {
        self.client.execute(action: "GetFaceIdResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取SDK核验结果
    ///
    /// 完成验证后，用FaceIdToken调用本接口获取结果信息，FaceIdToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getFaceIdResult(_ input: GetFaceIdResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFaceIdResultResponse {
        try await self.client.execute(action: "GetFaceIdResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取SDK核验结果
    ///
    /// 完成验证后，用FaceIdToken调用本接口获取结果信息，FaceIdToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getFaceIdResult(faceIdToken: String, isNeedVideo: Bool? = nil, isNeedBestFrame: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFaceIdResultResponse> {
        self.getFaceIdResult(.init(faceIdToken: faceIdToken, isNeedVideo: isNeedVideo, isNeedBestFrame: isNeedBestFrame), region: region, logger: logger, on: eventLoop)
    }

    /// 获取SDK核验结果
    ///
    /// 完成验证后，用FaceIdToken调用本接口获取结果信息，FaceIdToken生成后三天内（3\*24\*3,600秒）可多次拉取。
    @inlinable
    public func getFaceIdResult(faceIdToken: String, isNeedVideo: Bool? = nil, isNeedBestFrame: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFaceIdResultResponse {
        try await self.getFaceIdResult(.init(faceIdToken: faceIdToken, isNeedVideo: isNeedVideo, isNeedBestFrame: isNeedBestFrame), region: region, logger: logger, on: eventLoop)
    }
}
