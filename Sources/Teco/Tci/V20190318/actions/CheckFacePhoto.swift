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

extension Tci {
    /// CheckFacePhoto请求参数结构体
    public struct CheckFacePhotoRequest: TCRequestModel {
        /// 输入分析对象内容
        public let fileContent: String

        /// 输入分析对象类型，picture_url:图片地址
        public let fileType: String

        public init(fileContent: String, fileType: String) {
            self.fileContent = fileContent
            self.fileType = fileType
        }

        enum CodingKeys: String, CodingKey {
            case fileContent = "FileContent"
            case fileType = "FileType"
        }
    }

    /// CheckFacePhoto返回参数结构体
    public struct CheckFacePhotoResponse: TCResponseModel {
        /// 人脸检查结果，0：通过检查，1：图片模糊
        public let checkResult: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case checkResult = "CheckResult"
            case requestId = "RequestId"
        }
    }

    /// 检查人脸图片
    ///
    /// 检查人脸图片是否合法
    @inlinable
    public func checkFacePhoto(_ input: CheckFacePhotoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckFacePhotoResponse> {
        self.client.execute(action: "CheckFacePhoto", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查人脸图片
    ///
    /// 检查人脸图片是否合法
    @inlinable
    public func checkFacePhoto(_ input: CheckFacePhotoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckFacePhotoResponse {
        try await self.client.execute(action: "CheckFacePhoto", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查人脸图片
    ///
    /// 检查人脸图片是否合法
    @inlinable
    public func checkFacePhoto(fileContent: String, fileType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckFacePhotoResponse> {
        self.checkFacePhoto(.init(fileContent: fileContent, fileType: fileType), region: region, logger: logger, on: eventLoop)
    }

    /// 检查人脸图片
    ///
    /// 检查人脸图片是否合法
    @inlinable
    public func checkFacePhoto(fileContent: String, fileType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckFacePhotoResponse {
        try await self.checkFacePhoto(.init(fileContent: fileContent, fileType: fileType), region: region, logger: logger, on: eventLoop)
    }
}
