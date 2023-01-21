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

extension Bma {
    /// DescribeCRWorkInfo请求参数结构体
    public struct DescribeCRWorkInfoRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        public init(workId: Int64) {
            self.workId = workId
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
        }
    }

    /// DescribeCRWorkInfo返回参数结构体
    public struct DescribeCRWorkInfoResponse: TCResponseModel {
        /// 作品名称
        public let workName: String

        /// 监测状态
        public let monitorStatus: Int64

        /// 授权文件状态
        public let authStatus: Int64

        /// 委托书状态
        public let commStatus: Int64

        /// 是否著作权人
        public let isProducer: Int64

        /// 存证证书状态
        public let evidenceStatus: Int64

        /// 作品类型
        public let workCategory: String

        /// 是否原创
        public let isOriginal: String

        /// 是否已发表
        public let isRelease: String

        /// 著作权人姓名
        public let producerName: String

        /// 发表时间
        public let produceTime: String

        /// 白名单
        public let whiteLists: [String]

        /// 作品描述
        public let workDesc: String

        /// 授权书
        public let authorization: String

        /// 授权书生效日期
        public let authorizationStartTime: String

        /// 授权书截止日期
        public let authorizationEndTime: String

        /// 委托书
        public let commission: String

        /// 委托书生效日期
        public let commissionStartTime: String

        /// 委托书截止日期
        public let commissionEndTime: String

        /// 存证证书
        public let evidenceUrl: String

        /// 存证证书生效日期
        public let evidenceStartTime: String

        /// 存证证书截止日期
        public let evidenceEndTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case workName = "WorkName"
            case monitorStatus = "MonitorStatus"
            case authStatus = "AuthStatus"
            case commStatus = "CommStatus"
            case isProducer = "IsProducer"
            case evidenceStatus = "EvidenceStatus"
            case workCategory = "WorkCategory"
            case isOriginal = "IsOriginal"
            case isRelease = "IsRelease"
            case producerName = "ProducerName"
            case produceTime = "ProduceTime"
            case whiteLists = "WhiteLists"
            case workDesc = "WorkDesc"
            case authorization = "Authorization"
            case authorizationStartTime = "AuthorizationStartTime"
            case authorizationEndTime = "AuthorizationEndTime"
            case commission = "Commission"
            case commissionStartTime = "CommissionStartTime"
            case commissionEndTime = "CommissionEndTime"
            case evidenceUrl = "EvidenceUrl"
            case evidenceStartTime = "EvidenceStartTime"
            case evidenceEndTime = "EvidenceEndTime"
            case requestId = "RequestId"
        }
    }

    /// 查询作品基本信息
    @inlinable
    public func describeCRWorkInfo(_ input: DescribeCRWorkInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRWorkInfoResponse> {
        self.client.execute(action: "DescribeCRWorkInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询作品基本信息
    @inlinable
    public func describeCRWorkInfo(_ input: DescribeCRWorkInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRWorkInfoResponse {
        try await self.client.execute(action: "DescribeCRWorkInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询作品基本信息
    @inlinable
    public func describeCRWorkInfo(workId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRWorkInfoResponse> {
        self.describeCRWorkInfo(DescribeCRWorkInfoRequest(workId: workId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询作品基本信息
    @inlinable
    public func describeCRWorkInfo(workId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRWorkInfoResponse {
        try await self.describeCRWorkInfo(DescribeCRWorkInfoRequest(workId: workId), region: region, logger: logger, on: eventLoop)
    }
}
