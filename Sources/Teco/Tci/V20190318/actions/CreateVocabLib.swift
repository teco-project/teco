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

extension Tci {
    /// CreateVocabLib请求参数结构体
    public struct CreateVocabLibRequest: TCRequestModel {
        /// 词汇库名称
        public let vocabLibName: String

        public init(vocabLibName: String) {
            self.vocabLibName = vocabLibName
        }

        enum CodingKeys: String, CodingKey {
            case vocabLibName = "VocabLibName"
        }
    }

    /// CreateVocabLib返回参数结构体
    public struct CreateVocabLibResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 建立词汇库
    @inlinable
    public func createVocabLib(_ input: CreateVocabLibRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVocabLibResponse> {
        self.client.execute(action: "CreateVocabLib", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 建立词汇库
    @inlinable
    public func createVocabLib(_ input: CreateVocabLibRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVocabLibResponse {
        try await self.client.execute(action: "CreateVocabLib", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 建立词汇库
    @inlinable
    public func createVocabLib(vocabLibName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVocabLibResponse> {
        self.createVocabLib(CreateVocabLibRequest(vocabLibName: vocabLibName), region: region, logger: logger, on: eventLoop)
    }

    /// 建立词汇库
    @inlinable
    public func createVocabLib(vocabLibName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVocabLibResponse {
        try await self.createVocabLib(CreateVocabLibRequest(vocabLibName: vocabLibName), region: region, logger: logger, on: eventLoop)
    }
}
