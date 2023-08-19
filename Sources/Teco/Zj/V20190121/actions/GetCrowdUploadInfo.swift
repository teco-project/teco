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

extension Zj {
    /// GetCrowdUploadInfo请求参数结构体
    public struct GetCrowdUploadInfoRequest: TCRequest {
        /// 商户证书
        public let license: String

        /// 上传文件名称
        public let fileName: String

        public init(license: String, fileName: String) {
            self.license = license
            self.fileName = fileName
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case fileName = "FileName"
        }
    }

    /// GetCrowdUploadInfo返回参数结构体
    public struct GetCrowdUploadInfoResponse: TCResponse {
        /// 返回信息
        public let data: SmsGetCrowdUploadInfoResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取短信人群包cos上传信息
    ///
    /// 获取短信人群包cos上传需要的信息
    @inlinable
    public func getCrowdUploadInfo(_ input: GetCrowdUploadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCrowdUploadInfoResponse> {
        self.client.execute(action: "GetCrowdUploadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取短信人群包cos上传信息
    ///
    /// 获取短信人群包cos上传需要的信息
    @inlinable
    public func getCrowdUploadInfo(_ input: GetCrowdUploadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCrowdUploadInfoResponse {
        try await self.client.execute(action: "GetCrowdUploadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取短信人群包cos上传信息
    ///
    /// 获取短信人群包cos上传需要的信息
    @inlinable
    public func getCrowdUploadInfo(license: String, fileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCrowdUploadInfoResponse> {
        self.getCrowdUploadInfo(.init(license: license, fileName: fileName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取短信人群包cos上传信息
    ///
    /// 获取短信人群包cos上传需要的信息
    @inlinable
    public func getCrowdUploadInfo(license: String, fileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCrowdUploadInfoResponse {
        try await self.getCrowdUploadInfo(.init(license: license, fileName: fileName), region: region, logger: logger, on: eventLoop)
    }
}
