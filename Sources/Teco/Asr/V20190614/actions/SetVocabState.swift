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

extension Asr {
    /// SetVocabState请求参数结构体
    public struct SetVocabStateRequest: TCRequest {
        /// 热词表ID。
        public let vocabId: String

        /// 热词表状态，1：设为默认状态；0：设为非默认状态。
        public let state: Int64

        public init(vocabId: String, state: Int64) {
            self.vocabId = vocabId
            self.state = state
        }

        enum CodingKeys: String, CodingKey {
            case vocabId = "VocabId"
            case state = "State"
        }
    }

    /// SetVocabState返回参数结构体
    public struct SetVocabStateResponse: TCResponse {
        /// 热词表ID
        public let vocabId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vocabId = "VocabId"
            case requestId = "RequestId"
        }
    }

    /// 设置热词表状态
    ///
    /// 用户通过该接口可以设置热词表的默认状态。初始状态为0，用户可设置状态为1，即为默认状态。默认状态表示用户在请求识别时，如不设置热词表ID，则默认使用状态为1的热词表。
    @inlinable
    public func setVocabState(_ input: SetVocabStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVocabStateResponse> {
        self.client.execute(action: "SetVocabState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置热词表状态
    ///
    /// 用户通过该接口可以设置热词表的默认状态。初始状态为0，用户可设置状态为1，即为默认状态。默认状态表示用户在请求识别时，如不设置热词表ID，则默认使用状态为1的热词表。
    @inlinable
    public func setVocabState(_ input: SetVocabStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetVocabStateResponse {
        try await self.client.execute(action: "SetVocabState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置热词表状态
    ///
    /// 用户通过该接口可以设置热词表的默认状态。初始状态为0，用户可设置状态为1，即为默认状态。默认状态表示用户在请求识别时，如不设置热词表ID，则默认使用状态为1的热词表。
    @inlinable
    public func setVocabState(vocabId: String, state: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVocabStateResponse> {
        self.setVocabState(.init(vocabId: vocabId, state: state), region: region, logger: logger, on: eventLoop)
    }

    /// 设置热词表状态
    ///
    /// 用户通过该接口可以设置热词表的默认状态。初始状态为0，用户可设置状态为1，即为默认状态。默认状态表示用户在请求识别时，如不设置热词表ID，则默认使用状态为1的热词表。
    @inlinable
    public func setVocabState(vocabId: String, state: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetVocabStateResponse {
        try await self.setVocabState(.init(vocabId: vocabId, state: state), region: region, logger: logger, on: eventLoop)
    }
}
