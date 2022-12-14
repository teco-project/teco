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

extension Es {
    /// UpdateDictionaries请求参数结构体
    public struct UpdateDictionariesRequest: TCRequestModel {
        /// ES实例ID
        public let instanceId: String

        /// IK分词主词典COS地址
        public let ikMainDicts: [String]?

        /// IK分词停用词词典COS地址
        public let ikStopwords: [String]?

        /// 同义词词典COS地址
        public let synonym: [String]?

        /// QQ分词词典COS地址
        public let qqDict: [String]?

        /// 0：安装；1：删除。默认值0
        public let updateType: Int64?

        /// 是否强制重启集群。默认值false
        public let forceRestart: Bool?

        public init(instanceId: String, ikMainDicts: [String]? = nil, ikStopwords: [String]? = nil, synonym: [String]? = nil, qqDict: [String]? = nil, updateType: Int64? = nil, forceRestart: Bool? = nil) {
            self.instanceId = instanceId
            self.ikMainDicts = ikMainDicts
            self.ikStopwords = ikStopwords
            self.synonym = synonym
            self.qqDict = qqDict
            self.updateType = updateType
            self.forceRestart = forceRestart
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ikMainDicts = "IkMainDicts"
            case ikStopwords = "IkStopwords"
            case synonym = "Synonym"
            case qqDict = "QQDict"
            case updateType = "UpdateType"
            case forceRestart = "ForceRestart"
        }
    }

    /// UpdateDictionaries返回参数结构体
    public struct UpdateDictionariesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新ES集群词典
    @inlinable
    public func updateDictionaries(_ input: UpdateDictionariesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateDictionariesResponse > {
        self.client.execute(action: "UpdateDictionaries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新ES集群词典
    @inlinable
    public func updateDictionaries(_ input: UpdateDictionariesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDictionariesResponse {
        try await self.client.execute(action: "UpdateDictionaries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新ES集群词典
    @inlinable
    public func updateDictionaries(instanceId: String, ikMainDicts: [String]? = nil, ikStopwords: [String]? = nil, synonym: [String]? = nil, qqDict: [String]? = nil, updateType: Int64? = nil, forceRestart: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateDictionariesResponse > {
        self.updateDictionaries(UpdateDictionariesRequest(instanceId: instanceId, ikMainDicts: ikMainDicts, ikStopwords: ikStopwords, synonym: synonym, qqDict: qqDict, updateType: updateType, forceRestart: forceRestart), logger: logger, on: eventLoop)
    }

    /// 更新ES集群词典
    @inlinable
    public func updateDictionaries(instanceId: String, ikMainDicts: [String]? = nil, ikStopwords: [String]? = nil, synonym: [String]? = nil, qqDict: [String]? = nil, updateType: Int64? = nil, forceRestart: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDictionariesResponse {
        try await self.updateDictionaries(UpdateDictionariesRequest(instanceId: instanceId, ikMainDicts: ikMainDicts, ikStopwords: ikStopwords, synonym: synonym, qqDict: qqDict, updateType: updateType, forceRestart: forceRestart), logger: logger, on: eventLoop)
    }
}
