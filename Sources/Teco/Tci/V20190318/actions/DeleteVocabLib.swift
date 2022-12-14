//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeleteVocabLib请求参数结构体
    public struct DeleteVocabLibRequest: TCRequestModel {
        /// 词汇库名称
        public let vocabLibName: String

        public init(vocabLibName: String) {
            self.vocabLibName = vocabLibName
        }

        enum CodingKeys: String, CodingKey {
            case vocabLibName = "VocabLibName"
        }
    }

    /// DeleteVocabLib返回参数结构体
    public struct DeleteVocabLibResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除词汇库
    @inlinable
    public func deleteVocabLib(_ input: DeleteVocabLibRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVocabLibResponse > {
        self.client.execute(action: "DeleteVocabLib", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除词汇库
    @inlinable
    public func deleteVocabLib(_ input: DeleteVocabLibRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVocabLibResponse {
        try await self.client.execute(action: "DeleteVocabLib", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除词汇库
    @inlinable
    public func deleteVocabLib(vocabLibName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVocabLibResponse > {
        self.deleteVocabLib(DeleteVocabLibRequest(vocabLibName: vocabLibName), logger: logger, on: eventLoop)
    }

    /// 删除词汇库
    @inlinable
    public func deleteVocabLib(vocabLibName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVocabLibResponse {
        try await self.deleteVocabLib(DeleteVocabLibRequest(vocabLibName: vocabLibName), logger: logger, on: eventLoop)
    }
}
