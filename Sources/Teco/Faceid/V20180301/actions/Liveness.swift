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

extension Faceid {
    /// Liveness请求参数结构体
    public struct LivenessRequest: TCRequestModel {
        /// 用于活体检测的视频，视频的BASE64值；
        /// BASE64编码后的大小不超过8M，支持mp4、avi、flv格式。
        public let videoBase64: String

        /// 活体检测类型，取值：LIP/ACTION/SILENT。
        /// LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        public let livenessType: String

        /// 数字模式传参：数字验证码(1234)，需先调用接口获取数字验证码；
        /// 动作模式传参：传动作顺序(2,1 or 1,2)，需先调用接口获取动作顺序；
        /// 静默模式传参：不需要传递此参数。
        public let validateData: String?

        /// 额外配置，传入JSON字符串。
        /// {
        /// "BestFrameNum": 2  //需要返回多张最佳截图，取值范围1-10
        /// }
        public let optional: String?

        public init(videoBase64: String, livenessType: String, validateData: String? = nil, optional: String? = nil) {
            self.videoBase64 = videoBase64
            self.livenessType = livenessType
            self.validateData = validateData
            self.optional = optional
        }

        enum CodingKeys: String, CodingKey {
            case videoBase64 = "VideoBase64"
            case livenessType = "LivenessType"
            case validateData = "ValidateData"
            case optional = "Optional"
        }
    }

    /// Liveness返回参数结构体
    public struct LivenessResponse: TCResponseModel {
        /// 验证通过后的视频最佳截图照片，照片为BASE64编码后的值，jpg格式。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrameBase64: String?

        /// 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        public let result: String

        /// 业务结果描述。
        public let description: String

        /// 最佳最佳截图列表，仅在配置了返回多张最佳截图时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bestFrameList: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bestFrameBase64 = "BestFrameBase64"
            case result = "Result"
            case description = "Description"
            case bestFrameList = "BestFrameList"
            case requestId = "RequestId"
        }
    }

    /// 活体检测
    @inlinable
    public func liveness(_ input: LivenessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LivenessResponse> {
        self.client.execute(action: "Liveness", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 活体检测
    @inlinable
    public func liveness(_ input: LivenessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LivenessResponse {
        try await self.client.execute(action: "Liveness", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 活体检测
    @inlinable
    public func liveness(videoBase64: String, livenessType: String, validateData: String? = nil, optional: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LivenessResponse> {
        let input = LivenessRequest(videoBase64: videoBase64, livenessType: livenessType, validateData: validateData, optional: optional)
        return self.client.execute(action: "Liveness", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 活体检测
    @inlinable
    public func liveness(videoBase64: String, livenessType: String, validateData: String? = nil, optional: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LivenessResponse {
        let input = LivenessRequest(videoBase64: videoBase64, livenessType: livenessType, validateData: validateData, optional: optional)
        return try await self.client.execute(action: "Liveness", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
