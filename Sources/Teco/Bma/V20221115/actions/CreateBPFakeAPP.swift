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

extension Bma {
    /// CreateBPFakeAPP请求参数结构体
    public struct CreateBPFakeAPPRequest: TCRequestModel {
        /// 企业id
        public let companyId: Int64

        /// 仿冒应用名称
        public let fakeAPPName: String

        /// 仿冒来源
        public let appChan: String?

        /// 仿冒应用包名
        public let fakeAPPPackageName: String?

        /// 仿冒应用证书
        public let fakeAPPCert: String?

        /// 仿冒应用大小
        public let fakeAPPSize: String?

        /// 仿冒截图
        public let fakeAPPSnapshots: [String]?

        /// 备注
        public let note: String?

        public init(companyId: Int64, fakeAPPName: String, appChan: String? = nil, fakeAPPPackageName: String? = nil, fakeAPPCert: String? = nil, fakeAPPSize: String? = nil, fakeAPPSnapshots: [String]? = nil, note: String? = nil) {
            self.companyId = companyId
            self.fakeAPPName = fakeAPPName
            self.appChan = appChan
            self.fakeAPPPackageName = fakeAPPPackageName
            self.fakeAPPCert = fakeAPPCert
            self.fakeAPPSize = fakeAPPSize
            self.fakeAPPSnapshots = fakeAPPSnapshots
            self.note = note
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case fakeAPPName = "FakeAPPName"
            case appChan = "APPChan"
            case fakeAPPPackageName = "FakeAPPPackageName"
            case fakeAPPCert = "FakeAPPCert"
            case fakeAPPSize = "FakeAPPSize"
            case fakeAPPSnapshots = "FakeAPPSnapshots"
            case note = "Note"
        }
    }

    /// CreateBPFakeAPP返回参数结构体
    public struct CreateBPFakeAPPResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 仿冒应用举报
    @inlinable @discardableResult
    public func createBPFakeAPP(_ input: CreateBPFakeAPPRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPFakeAPPResponse> {
        self.client.execute(action: "CreateBPFakeAPP", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 仿冒应用举报
    @inlinable @discardableResult
    public func createBPFakeAPP(_ input: CreateBPFakeAPPRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPFakeAPPResponse {
        try await self.client.execute(action: "CreateBPFakeAPP", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 仿冒应用举报
    @inlinable @discardableResult
    public func createBPFakeAPP(companyId: Int64, fakeAPPName: String, appChan: String? = nil, fakeAPPPackageName: String? = nil, fakeAPPCert: String? = nil, fakeAPPSize: String? = nil, fakeAPPSnapshots: [String]? = nil, note: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPFakeAPPResponse> {
        self.createBPFakeAPP(.init(companyId: companyId, fakeAPPName: fakeAPPName, appChan: appChan, fakeAPPPackageName: fakeAPPPackageName, fakeAPPCert: fakeAPPCert, fakeAPPSize: fakeAPPSize, fakeAPPSnapshots: fakeAPPSnapshots, note: note), region: region, logger: logger, on: eventLoop)
    }

    /// 仿冒应用举报
    @inlinable @discardableResult
    public func createBPFakeAPP(companyId: Int64, fakeAPPName: String, appChan: String? = nil, fakeAPPPackageName: String? = nil, fakeAPPCert: String? = nil, fakeAPPSize: String? = nil, fakeAPPSnapshots: [String]? = nil, note: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPFakeAPPResponse {
        try await self.createBPFakeAPP(.init(companyId: companyId, fakeAPPName: fakeAPPName, appChan: appChan, fakeAPPPackageName: fakeAPPPackageName, fakeAPPCert: fakeAPPCert, fakeAPPSize: fakeAPPSize, fakeAPPSnapshots: fakeAPPSnapshots, note: note), region: region, logger: logger, on: eventLoop)
    }
}
