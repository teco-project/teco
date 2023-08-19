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

extension Tav {
    /// ScanFile请求参数结构体
    public struct ScanFileRequest: TCRequest {
        /// 购买服务后获得的授权信息，用于保证请求有效性
        public let key: String

        /// 文件下载url地址
        public let sample: String

        /// 文件的md5值
        public let md5: String

        public init(key: String, sample: String, md5: String) {
            self.key = key
            self.sample = sample
            self.md5 = md5
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case sample = "Sample"
            case md5 = "Md5"
        }
    }

    /// ScanFile返回参数结构体
    public struct ScanFileResponse: TCResponse {
        /// 接口调用状态，成功返回200，失败返回400
        public let status: UInt64

        /// 接口调用描述信息，成功返回"success"，失败返回"invalid request"
        public let info: String

        /// 异步扫描任务提交成功返回success
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 文件上传扫描
    ///
    /// tav文件上传扫描
    @inlinable
    public func scanFile(_ input: ScanFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanFileResponse> {
        self.client.execute(action: "ScanFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件上传扫描
    ///
    /// tav文件上传扫描
    @inlinable
    public func scanFile(_ input: ScanFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanFileResponse {
        try await self.client.execute(action: "ScanFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文件上传扫描
    ///
    /// tav文件上传扫描
    @inlinable
    public func scanFile(key: String, sample: String, md5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanFileResponse> {
        self.scanFile(.init(key: key, sample: sample, md5: md5), region: region, logger: logger, on: eventLoop)
    }

    /// 文件上传扫描
    ///
    /// tav文件上传扫描
    @inlinable
    public func scanFile(key: String, sample: String, md5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanFileResponse {
        try await self.scanFile(.init(key: key, sample: sample, md5: md5), region: region, logger: logger, on: eventLoop)
    }
}
