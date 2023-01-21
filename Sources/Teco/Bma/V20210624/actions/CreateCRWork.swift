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
    /// CreateCRWork请求参数结构体
    public struct CreateCRWorkRequest: TCRequestModel {
        /// 作品名称
        public let workName: String

        /// 作品分类
        public let workCategory: String

        /// 作品内容类型
        public let workType: String

        /// 作品标签
        public let workSign: String?

        /// 字段已废弃，作品图片
        public let workPic: String?

        /// 作品描述
        public let workDesc: String?

        /// 是否原创：0-否 1-是
        public let isOriginal: String?

        /// 是否发布：0-未发布 1-已发布
        public let isRelease: String?

        /// 字段已废弃，著作权人ID
        public let producerID: Int64?

        /// 创作时间
        public let produceTime: String?

        /// 字段已废弃
        public let sampleContentURL: String?

        /// 作品下载地址
        public let sampleDownloadURL: String?

        /// 作品在线地址
        public let samplePublicURL: String?

        /// 字段已废弃，授予类型
        public let grantType: String?

        /// 是否监测：0-不监测 1-监测
        public let isMonitor: String?

        /// 是否存证：0-不存证  2-存证 注意是2
        public let isCert: String?

        /// 存证回调地址
        public let certUrl: String?

        /// 监测回调地址
        public let monitorUrl: String?

        /// 字段已废弃，创作性质
        public let produceType: String?

        /// 白名单列表
        public let whiteLists: [String]?

        /// 作品ID，忽略该字段
        public let workId: Int64?

        /// 著作权人姓名
        public let producerName: String?

        /// 作者，小说类型必填
        public let nickname: String?

        /// 授权书下载地址
        public let authorization: String?

        /// 授权书开始时间
        public let authorizationStartTime: String?

        /// 授权书结束时间
        public let authorizationEndTime: String?

        /// 内容格式，支持txt、doc等，表示Content的具体格式
        public let contentType: String?

        /// 文件内容base64编码，该字段仅在无法提供下载链接时使用
        public let content: String?

        /// 监测结束时间
        public let monitorEndTime: String?

        /// 申请人ID，用于存证和取证
        public let applierId: String?

        /// 申请人姓名，用于存证和取证
        public let applierName: String?

        public init(workName: String, workCategory: String, workType: String, workSign: String? = nil, workPic: String? = nil, workDesc: String? = nil, isOriginal: String? = nil, isRelease: String? = nil, producerID: Int64? = nil, produceTime: String? = nil, sampleContentURL: String? = nil, sampleDownloadURL: String? = nil, samplePublicURL: String? = nil, grantType: String? = nil, isMonitor: String? = nil, isCert: String? = nil, certUrl: String? = nil, monitorUrl: String? = nil, produceType: String? = nil, whiteLists: [String]? = nil, workId: Int64? = nil, producerName: String? = nil, nickname: String? = nil, authorization: String? = nil, authorizationStartTime: String? = nil, authorizationEndTime: String? = nil, contentType: String? = nil, content: String? = nil, monitorEndTime: String? = nil, applierId: String? = nil, applierName: String? = nil) {
            self.workName = workName
            self.workCategory = workCategory
            self.workType = workType
            self.workSign = workSign
            self.workPic = workPic
            self.workDesc = workDesc
            self.isOriginal = isOriginal
            self.isRelease = isRelease
            self.producerID = producerID
            self.produceTime = produceTime
            self.sampleContentURL = sampleContentURL
            self.sampleDownloadURL = sampleDownloadURL
            self.samplePublicURL = samplePublicURL
            self.grantType = grantType
            self.isMonitor = isMonitor
            self.isCert = isCert
            self.certUrl = certUrl
            self.monitorUrl = monitorUrl
            self.produceType = produceType
            self.whiteLists = whiteLists
            self.workId = workId
            self.producerName = producerName
            self.nickname = nickname
            self.authorization = authorization
            self.authorizationStartTime = authorizationStartTime
            self.authorizationEndTime = authorizationEndTime
            self.contentType = contentType
            self.content = content
            self.monitorEndTime = monitorEndTime
            self.applierId = applierId
            self.applierName = applierName
        }

        enum CodingKeys: String, CodingKey {
            case workName = "WorkName"
            case workCategory = "WorkCategory"
            case workType = "WorkType"
            case workSign = "WorkSign"
            case workPic = "WorkPic"
            case workDesc = "WorkDesc"
            case isOriginal = "IsOriginal"
            case isRelease = "IsRelease"
            case producerID = "ProducerID"
            case produceTime = "ProduceTime"
            case sampleContentURL = "SampleContentURL"
            case sampleDownloadURL = "SampleDownloadURL"
            case samplePublicURL = "SamplePublicURL"
            case grantType = "GrantType"
            case isMonitor = "IsMonitor"
            case isCert = "IsCert"
            case certUrl = "CertUrl"
            case monitorUrl = "MonitorUrl"
            case produceType = "ProduceType"
            case whiteLists = "WhiteLists"
            case workId = "WorkId"
            case producerName = "ProducerName"
            case nickname = "Nickname"
            case authorization = "Authorization"
            case authorizationStartTime = "AuthorizationStartTime"
            case authorizationEndTime = "AuthorizationEndTime"
            case contentType = "ContentType"
            case content = "Content"
            case monitorEndTime = "MonitorEndTime"
            case applierId = "ApplierId"
            case applierName = "ApplierName"
        }
    }

    /// CreateCRWork返回参数结构体
    public struct CreateCRWorkResponse: TCResponseModel {
        /// 作品ID，一个作品对应唯一的workid
        public let workId: Int64

        /// 存证ID，忽略该字段
        public let evidenceId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }

    /// 新建作品
    @inlinable
    public func createCRWork(_ input: CreateCRWorkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRWorkResponse> {
        self.client.execute(action: "CreateCRWork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建作品
    @inlinable
    public func createCRWork(_ input: CreateCRWorkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRWorkResponse {
        try await self.client.execute(action: "CreateCRWork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建作品
    @inlinable
    public func createCRWork(workName: String, workCategory: String, workType: String, workSign: String? = nil, workPic: String? = nil, workDesc: String? = nil, isOriginal: String? = nil, isRelease: String? = nil, producerID: Int64? = nil, produceTime: String? = nil, sampleContentURL: String? = nil, sampleDownloadURL: String? = nil, samplePublicURL: String? = nil, grantType: String? = nil, isMonitor: String? = nil, isCert: String? = nil, certUrl: String? = nil, monitorUrl: String? = nil, produceType: String? = nil, whiteLists: [String]? = nil, workId: Int64? = nil, producerName: String? = nil, nickname: String? = nil, authorization: String? = nil, authorizationStartTime: String? = nil, authorizationEndTime: String? = nil, contentType: String? = nil, content: String? = nil, monitorEndTime: String? = nil, applierId: String? = nil, applierName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRWorkResponse> {
        self.createCRWork(CreateCRWorkRequest(workName: workName, workCategory: workCategory, workType: workType, workSign: workSign, workPic: workPic, workDesc: workDesc, isOriginal: isOriginal, isRelease: isRelease, producerID: producerID, produceTime: produceTime, sampleContentURL: sampleContentURL, sampleDownloadURL: sampleDownloadURL, samplePublicURL: samplePublicURL, grantType: grantType, isMonitor: isMonitor, isCert: isCert, certUrl: certUrl, monitorUrl: monitorUrl, produceType: produceType, whiteLists: whiteLists, workId: workId, producerName: producerName, nickname: nickname, authorization: authorization, authorizationStartTime: authorizationStartTime, authorizationEndTime: authorizationEndTime, contentType: contentType, content: content, monitorEndTime: monitorEndTime, applierId: applierId, applierName: applierName), region: region, logger: logger, on: eventLoop)
    }

    /// 新建作品
    @inlinable
    public func createCRWork(workName: String, workCategory: String, workType: String, workSign: String? = nil, workPic: String? = nil, workDesc: String? = nil, isOriginal: String? = nil, isRelease: String? = nil, producerID: Int64? = nil, produceTime: String? = nil, sampleContentURL: String? = nil, sampleDownloadURL: String? = nil, samplePublicURL: String? = nil, grantType: String? = nil, isMonitor: String? = nil, isCert: String? = nil, certUrl: String? = nil, monitorUrl: String? = nil, produceType: String? = nil, whiteLists: [String]? = nil, workId: Int64? = nil, producerName: String? = nil, nickname: String? = nil, authorization: String? = nil, authorizationStartTime: String? = nil, authorizationEndTime: String? = nil, contentType: String? = nil, content: String? = nil, monitorEndTime: String? = nil, applierId: String? = nil, applierName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRWorkResponse {
        try await self.createCRWork(CreateCRWorkRequest(workName: workName, workCategory: workCategory, workType: workType, workSign: workSign, workPic: workPic, workDesc: workDesc, isOriginal: isOriginal, isRelease: isRelease, producerID: producerID, produceTime: produceTime, sampleContentURL: sampleContentURL, sampleDownloadURL: sampleDownloadURL, samplePublicURL: samplePublicURL, grantType: grantType, isMonitor: isMonitor, isCert: isCert, certUrl: certUrl, monitorUrl: monitorUrl, produceType: produceType, whiteLists: whiteLists, workId: workId, producerName: producerName, nickname: nickname, authorization: authorization, authorizationStartTime: authorizationStartTime, authorizationEndTime: authorizationEndTime, contentType: contentType, content: content, monitorEndTime: monitorEndTime, applierId: applierId, applierName: applierName), region: region, logger: logger, on: eventLoop)
    }
}
