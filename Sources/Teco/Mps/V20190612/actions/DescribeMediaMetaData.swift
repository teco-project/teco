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

extension Mps {
    /// DescribeMediaMetaData请求参数结构体
    public struct DescribeMediaMetaDataRequest: TCRequestModel {
        /// 需要获取元信息的文件输入信息。
        public let inputInfo: MediaInputInfo

        public init(inputInfo: MediaInputInfo) {
            self.inputInfo = inputInfo
        }

        enum CodingKeys: String, CodingKey {
            case inputInfo = "InputInfo"
        }
    }

    /// DescribeMediaMetaData返回参数结构体
    public struct DescribeMediaMetaDataResponse: TCResponseModel {
        /// 媒体元信息。
        public let metaData: MediaMetaData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metaData = "MetaData"
            case requestId = "RequestId"
        }
    }

    /// 获取媒体元信息
    ///
    /// 获取媒体的元信息，包括视频画面宽、高、编码格式、时长、帧率等。
    @inlinable
    public func describeMediaMetaData(_ input: DescribeMediaMetaDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediaMetaDataResponse> {
        self.client.execute(action: "DescribeMediaMetaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取媒体元信息
    ///
    /// 获取媒体的元信息，包括视频画面宽、高、编码格式、时长、帧率等。
    @inlinable
    public func describeMediaMetaData(_ input: DescribeMediaMetaDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaMetaDataResponse {
        try await self.client.execute(action: "DescribeMediaMetaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取媒体元信息
    ///
    /// 获取媒体的元信息，包括视频画面宽、高、编码格式、时长、帧率等。
    @inlinable
    public func describeMediaMetaData(inputInfo: MediaInputInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediaMetaDataResponse> {
        self.describeMediaMetaData(.init(inputInfo: inputInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取媒体元信息
    ///
    /// 获取媒体的元信息，包括视频画面宽、高、编码格式、时长、帧率等。
    @inlinable
    public func describeMediaMetaData(inputInfo: MediaInputInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaMetaDataResponse {
        try await self.describeMediaMetaData(.init(inputInfo: inputInfo), region: region, logger: logger, on: eventLoop)
    }
}
