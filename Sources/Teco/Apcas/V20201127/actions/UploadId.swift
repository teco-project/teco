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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Apcas {
    /// UploadId请求参数结构体
    public struct UploadIdRequest: TCRequestModel {
        /// id标志的类型: 0:imei 7:IDFA 8:MD5(imei)
        public let type: UInt64

        /// 任务名称
        public let taskName: String

        /// ID列表（ID间使用换行符分割、然后使用Base64编码）
        public let idListBase64: String

        public init(type: UInt64, taskName: String, idListBase64: String) {
            self.type = type
            self.taskName = taskName
            self.idListBase64 = idListBase64
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case taskName = "TaskName"
            case idListBase64 = "IdListBase64"
        }
    }

    /// UploadId返回参数结构体
    public struct UploadIdResponse: TCResponseModel {
        /// 画像洞察任务ID等信息
        public let taskData: TaskData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskData = "TaskData"
            case requestId = "RequestId"
        }
    }

    /// 上传群体画像的ID列表
    ///
    /// 上传群体画像的ID列表（支持的ID类型：0:imei 7:IDFA 8:MD5(imei)），后台返回生成的画像分析任务ID
    @inlinable
    public func uploadId(_ input: UploadIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadIdResponse> {
        self.client.execute(action: "UploadId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传群体画像的ID列表
    ///
    /// 上传群体画像的ID列表（支持的ID类型：0:imei 7:IDFA 8:MD5(imei)），后台返回生成的画像分析任务ID
    @inlinable
    public func uploadId(_ input: UploadIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadIdResponse {
        try await self.client.execute(action: "UploadId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传群体画像的ID列表
    ///
    /// 上传群体画像的ID列表（支持的ID类型：0:imei 7:IDFA 8:MD5(imei)），后台返回生成的画像分析任务ID
    @inlinable
    public func uploadId(type: UInt64, taskName: String, idListBase64: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadIdResponse> {
        self.uploadId(.init(type: type, taskName: taskName, idListBase64: idListBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 上传群体画像的ID列表
    ///
    /// 上传群体画像的ID列表（支持的ID类型：0:imei 7:IDFA 8:MD5(imei)），后台返回生成的画像分析任务ID
    @inlinable
    public func uploadId(type: UInt64, taskName: String, idListBase64: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadIdResponse {
        try await self.uploadId(.init(type: type, taskName: taskName, idListBase64: idListBase64), region: region, logger: logger, on: eventLoop)
    }
}
