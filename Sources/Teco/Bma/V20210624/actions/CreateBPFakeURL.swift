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

extension Bma {
    /// CreateBPFakeURL请求参数结构体
    public struct CreateBPFakeURLRequest: TCRequestModel {
        /// 保护网址ID
        public let protectURLId: Int64?
        
        /// 仿冒网址
        public let fakeURL: String?
        
        /// 截图
        public let snapshotNames: [String]?
        
        /// 举报说明
        public let note: String?
        
        public init (protectURLId: Int64? = nil, fakeURL: String? = nil, snapshotNames: [String]? = nil, note: String? = nil) {
            self.protectURLId = protectURLId
            self.fakeURL = fakeURL
            self.snapshotNames = snapshotNames
            self.note = note
        }
        
        enum CodingKeys: String, CodingKey {
            case protectURLId = "ProtectURLId"
            case fakeURL = "FakeURL"
            case snapshotNames = "SnapshotNames"
            case note = "Note"
        }
    }
    
    /// CreateBPFakeURL返回参数结构体
    public struct CreateBPFakeURLResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 添加仿冒链接（举报）
    @inlinable
    public func createBPFakeURL(_ input: CreateBPFakeURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBPFakeURLResponse > {
        self.client.execute(action: "CreateBPFakeURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加仿冒链接（举报）
    @inlinable
    public func createBPFakeURL(_ input: CreateBPFakeURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPFakeURLResponse {
        try await self.client.execute(action: "CreateBPFakeURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
