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

extension Ssl {
    /// UploadConfirmLetter请求参数结构体
    public struct UploadConfirmLetterRequest: TCRequest {
        /// 证书ID
        public let certificateId: String

        /// base64编码后的证书确认函文件，格式应为jpg、jpeg、png、pdf，大小应在1kb与1.4M之间。
        public let confirmLetter: String

        public init(certificateId: String, confirmLetter: String) {
            self.certificateId = certificateId
            self.confirmLetter = confirmLetter
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case confirmLetter = "ConfirmLetter"
        }
    }

    /// UploadConfirmLetter返回参数结构体
    public struct UploadConfirmLetterResponse: TCResponse {
        /// 证书ID
        public let certificateId: String

        /// 是否成功
        public let isSuccess: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case isSuccess = "IsSuccess"
            case requestId = "RequestId"
        }
    }

    /// 上传证书确认函
    ///
    /// 本接口（UploadConfirmLetter）用于上传证书确认函。
    @inlinable
    public func uploadConfirmLetter(_ input: UploadConfirmLetterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadConfirmLetterResponse> {
        self.client.execute(action: "UploadConfirmLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传证书确认函
    ///
    /// 本接口（UploadConfirmLetter）用于上传证书确认函。
    @inlinable
    public func uploadConfirmLetter(_ input: UploadConfirmLetterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadConfirmLetterResponse {
        try await self.client.execute(action: "UploadConfirmLetter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传证书确认函
    ///
    /// 本接口（UploadConfirmLetter）用于上传证书确认函。
    @inlinable
    public func uploadConfirmLetter(certificateId: String, confirmLetter: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadConfirmLetterResponse> {
        self.uploadConfirmLetter(.init(certificateId: certificateId, confirmLetter: confirmLetter), region: region, logger: logger, on: eventLoop)
    }

    /// 上传证书确认函
    ///
    /// 本接口（UploadConfirmLetter）用于上传证书确认函。
    @inlinable
    public func uploadConfirmLetter(certificateId: String, confirmLetter: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadConfirmLetterResponse {
        try await self.uploadConfirmLetter(.init(certificateId: certificateId, confirmLetter: confirmLetter), region: region, logger: logger, on: eventLoop)
    }
}
