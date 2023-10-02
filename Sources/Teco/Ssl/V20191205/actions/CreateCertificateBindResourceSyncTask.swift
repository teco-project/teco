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
    /// CreateCertificateBindResourceSyncTask请求参数结构体
    public struct CreateCertificateBindResourceSyncTaskRequest: TCRequest {
        /// 证书ID列表，总数不能超过100
        public let certificateIds: [String]

        /// 是否使用缓存， 1使用缓存，0不使用缓存； 默认为1使用缓存； 若当前证书ID存在半小时已完成的任务， 则使用缓存的情况下， 会读取半小时内离当前时间最近的查询结果
        public let isCache: UInt64

        public init(certificateIds: [String], isCache: UInt64) {
            self.certificateIds = certificateIds
            self.isCache = isCache
        }

        enum CodingKeys: String, CodingKey {
            case certificateIds = "CertificateIds"
            case isCache = "IsCache"
        }
    }

    /// CreateCertificateBindResourceSyncTask返回参数结构体
    public struct CreateCertificateBindResourceSyncTaskResponse: TCResponse {
        /// 证书关联云资源异步任务ID列表
        public let certTaskIds: [CertTaskId]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certTaskIds = "CertTaskIds"
            case requestId = "RequestId"
        }
    }

    /// 创建证书关联云资源异步任务
    ///
    /// 创建证书绑定关联云资源异步任务， 该接口用于查询证书关联云资源。 若证书ID已存在查询云资源任务，则结果返回该任务ID。关联云资源类型，支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）。查询关联云资源结果使用DescribeCertificateBindResourceTaskResult接口
    @inlinable
    public func createCertificateBindResourceSyncTask(_ input: CreateCertificateBindResourceSyncTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCertificateBindResourceSyncTaskResponse> {
        self.client.execute(action: "CreateCertificateBindResourceSyncTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建证书关联云资源异步任务
    ///
    /// 创建证书绑定关联云资源异步任务， 该接口用于查询证书关联云资源。 若证书ID已存在查询云资源任务，则结果返回该任务ID。关联云资源类型，支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）。查询关联云资源结果使用DescribeCertificateBindResourceTaskResult接口
    @inlinable
    public func createCertificateBindResourceSyncTask(_ input: CreateCertificateBindResourceSyncTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCertificateBindResourceSyncTaskResponse {
        try await self.client.execute(action: "CreateCertificateBindResourceSyncTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建证书关联云资源异步任务
    ///
    /// 创建证书绑定关联云资源异步任务， 该接口用于查询证书关联云资源。 若证书ID已存在查询云资源任务，则结果返回该任务ID。关联云资源类型，支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）。查询关联云资源结果使用DescribeCertificateBindResourceTaskResult接口
    @inlinable
    public func createCertificateBindResourceSyncTask(certificateIds: [String], isCache: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCertificateBindResourceSyncTaskResponse> {
        self.createCertificateBindResourceSyncTask(.init(certificateIds: certificateIds, isCache: isCache), region: region, logger: logger, on: eventLoop)
    }

    /// 创建证书关联云资源异步任务
    ///
    /// 创建证书绑定关联云资源异步任务， 该接口用于查询证书关联云资源。 若证书ID已存在查询云资源任务，则结果返回该任务ID。关联云资源类型，支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）。查询关联云资源结果使用DescribeCertificateBindResourceTaskResult接口
    @inlinable
    public func createCertificateBindResourceSyncTask(certificateIds: [String], isCache: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCertificateBindResourceSyncTaskResponse {
        try await self.createCertificateBindResourceSyncTask(.init(certificateIds: certificateIds, isCache: isCache), region: region, logger: logger, on: eventLoop)
    }
}