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

/// Service error type returned by `Tbaas`.
public protocol TCTbaasErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTbaasError``.
    ///
    /// - Returns: ``TCTbaasError`` that holds the same error code and context.
    func asTbaasError() -> TCTbaasError
}

public struct TCTbaasError: TCTbaasErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation_BaaSStopServing = "FailedOperation.BaaSStopServing"
        case failedOperation_BcosService = "FailedOperation.BcosService"
        case failedOperation_CaCheckCsr = "FailedOperation.CaCheckCsr"
        case failedOperation_CaDbOption = "FailedOperation.CaDbOption"
        case failedOperation_CaExsit = "FailedOperation.CaExsit"
        case failedOperation_CaGenkey = "FailedOperation.CaGenkey"
        case failedOperation_CaInit = "FailedOperation.CaInit"
        case failedOperation_CaInputParam = "FailedOperation.CaInputParam"
        case failedOperation_CaNoExist = "FailedOperation.CaNoExist"
        case failedOperation_CaRevoke = "FailedOperation.CaRevoke"
        case failedOperation_CaRootNonExist = "FailedOperation.CaRootNonExist"
        case failedOperation_CaService = "FailedOperation.CaService"
        case failedOperation_CaSignCert = "FailedOperation.CaSignCert"
        case failedOperation_CaYunApiApplyCert = "FailedOperation.CaYunApiApplyCert"
        case failedOperation_CaYunApiCommon = "FailedOperation.CaYunApiCommon"
        case failedOperation_ChainCodeChannel = "FailedOperation.ChainCodeChannel"
        case failedOperation_ChainCodeExist = "FailedOperation.ChainCodeExist"
        case failedOperation_ChainCodeInit = "FailedOperation.ChainCodeInit"
        case failedOperation_ChainCodeInstall = "FailedOperation.ChainCodeInstall"
        case failedOperation_CompileDeployedContract = "FailedOperation.CompileDeployedContract"
        case failedOperation_CompileDeployingContract = "FailedOperation.CompileDeployingContract"
        case failedOperation_ContractEditedByOtherAgency = "FailedOperation.ContractEditedByOtherAgency"
        case failedOperation_DatabaseException = "FailedOperation.DatabaseException"
        case failedOperation_DeleteDeployedContract = "FailedOperation.DeleteDeployedContract"
        case failedOperation_DeleteDeployingContract = "FailedOperation.DeleteDeployingContract"
        case failedOperation_DeployContractNotCompile = "FailedOperation.DeployContractNotCompile"
        case failedOperation_FabricBlockDetail = "FailedOperation.FabricBlockDetail"
        case failedOperation_FabricBlockQuery = "FailedOperation.FabricBlockQuery"
        case failedOperation_FabricCommit = "FailedOperation.FabricCommit"
        case failedOperation_FabricEventHub = "FailedOperation.FabricEventHub"
        case failedOperation_FabricManage = "FailedOperation.FabricManage"
        case failedOperation_FabricProposal = "FailedOperation.FabricProposal"
        case failedOperation_FabricRequestParams = "FailedOperation.FabricRequestParams"
        case failedOperation_FabricRequstParams = "FailedOperation.FabricRequstParams"
        case failedOperation_FabricTransactionDetail = "FailedOperation.FabricTransactionDetail"
        case failedOperation_FabricTransactionQuery = "FailedOperation.FabricTransactionQuery"
        case failedOperation_FabricTxIdQuery = "FailedOperation.FabricTxIdQuery"
        case failedOperation_FabricTxInvoke = "FailedOperation.FabricTxInvoke"
        case failedOperation_FabricTxQuery = "FailedOperation.FabricTxQuery"
        case failedOperation_FabricTxQueryNone = "FailedOperation.FabricTxQueryNone"
        case failedOperation_FrontRequestFail = "FailedOperation.FrontRequestFail"
        case failedOperation_GroupIllegal = "FailedOperation.GroupIllegal"
        case failedOperation_InvalidChaincode = "FailedOperation.InvalidChaincode"
        case failedOperation_InvalidChannel = "FailedOperation.InvalidChannel"
        case failedOperation_InvalidCluster = "FailedOperation.InvalidCluster"
        case failedOperation_InvalidGroup = "FailedOperation.InvalidGroup"
        case failedOperation_InvalidGroupPk = "FailedOperation.InvalidGroupPk"
        case failedOperation_InvalidKeyUser = "FailedOperation.InvalidKeyUser"
        case failedOperation_InvalidOperation = "FailedOperation.InvalidOperation"
        case failedOperation_InvalidPeer = "FailedOperation.InvalidPeer"
        case failedOperation_InvalidResource = "FailedOperation.InvalidResource"
        case failedOperation_ManageService = "FailedOperation.ManageService"
        case failedOperation_NewContract = "FailedOperation.NewContract"
        case failedOperation_NoChainCodeChannel = "FailedOperation.NoChainCodeChannel"
        case failedOperation_NoChainCodeGroup = "FailedOperation.NoChainCodeGroup"
        case failedOperation_NoChainCodePeer = "FailedOperation.NoChainCodePeer"
        case failedOperation_NoChannelGroup = "FailedOperation.NoChannelGroup"
        case failedOperation_NoChannelPeer = "FailedOperation.NoChannelPeer"
        case failedOperation_NoObject = "FailedOperation.NoObject"
        case failedOperation_NoPeer = "FailedOperation.NoPeer"
        case failedOperation_NotDeployedContract = "FailedOperation.NotDeployedContract"
        case failedOperation_ServiceFailed = "FailedOperation.ServiceFailed"
        case failedOperation_StatusNoMatch = "FailedOperation.StatusNoMatch"
        case failedOperation_TimeOutUrl = "FailedOperation.TimeOutUrl"
        case failedOperation_TransactionTimeout = "FailedOperation.TransactionTimeout"
        case failedOperation_UpdateDeployedContract = "FailedOperation.UpdateDeployedContract"
        case failedOperation_UserAuthType = "FailedOperation.UserAuthType"
        case failedOperation_UserInBlackList = "FailedOperation.UserInBlackList"
        case failedOperation_UserNoJoinDemoCluster = "FailedOperation.UserNoJoinDemoCluster"
        case internalError_DBError = "InternalError.DBError"
        case internalError_FailPreform = "InternalError.FailPreform"
        case internalError_FailUrl = "InternalError.FailUrl"
        case internalError_FlaskException = "InternalError.FlaskException"
        case internalError_InvalidContractParam = "InternalError.InvalidContractParam"
        case internalError_MethodTypeNotSupport = "InternalError.MethodTypeNotSupport"
        case internalError_NoDefineError = "InternalError.NoDefineError"
        case internalError_ServerError = "InternalError.ServerError"
        case internalError_ServerException = "InternalError.ServerException"
        case internalError_ServiceError = "InternalError.ServiceError"
        case internalError_ServicePanic = "InternalError.ServicePanic"
        case internalError_TransactionService = "InternalError.TransactionService"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_IllegalFormat = "InvalidParameterValue.IllegalFormat"
        case invalidParameterValue_IllegalValue = "InvalidParameterValue.IllegalValue"
        case invalidParameterValue_ParameterEmpty = "InvalidParameterValue.ParameterEmpty"
        case invalidParameter_AccountParamError = "InvalidParameter.AccountParamError"
        case invalidParameter_AgencyInvalid = "InvalidParameter.AgencyInvalid"
        case invalidParameter_AgencyNetParamInvalid = "InvalidParameter.AgencyNetParamInvalid"
        case invalidParameter_AllianceIdOfNetEmpty = "InvalidParameter.AllianceIdOfNetEmpty"
        case invalidParameter_ContractIdInvalid = "InvalidParameter.ContractIdInvalid"
        case invalidParameter_DataHadExist = "InvalidParameter.DataHadExist"
        case invalidParameter_EmptyParam = "InvalidParameter.EmptyParam"
        case invalidParameter_ExpireTimeInvalid = "InvalidParameter.ExpireTimeInvalid"
        case invalidParameter_FrontConnFail = "InvalidParameter.FrontConnFail"
        case invalidParameter_FrontIpInvalid = "InvalidParameter.FrontIpInvalid"
        case invalidParameter_FrontParamError = "InvalidParameter.FrontParamError"
        case invalidParameter_FrontRequestFail = "InvalidParameter.FrontRequestFail"
        case invalidParameter_InputDataViolation = "InvalidParameter.InputDataViolation"
        case invalidParameter_InvalidContractArg = "InvalidParameter.InvalidContractArg"
        case invalidParameter_NetIdInvalid = "InvalidParameter.NetIdInvalid"
        case invalidParameter_NetParamError = "InvalidParameter.NetParamError"
        case invalidParameter_NewKeyUserParamError = "InvalidParameter.NewKeyUserParamError"
        case invalidParameter_NoInfoToDelete = "InvalidParameter.NoInfoToDelete"
        case invalidParameter_NotFoundValidFront = "InvalidParameter.NotFoundValidFront"
        case invalidParameter_ReDeployedContract = "InvalidParameter.ReDeployedContract"
        case invalidParameter_ReDeployingContract = "InvalidParameter.ReDeployingContract"
        case invalidParameter_RoleInvalid = "InvalidParameter.RoleInvalid"
        case missingParameter_EmptyParam = "MissingParameter.EmptyParam"
        case operationDenied_NotOwner = "OperationDenied.NotOwner"
        case resourceNotFound_EmptyData = "ResourceNotFound.EmptyData"
    }

    /// Error domains affliated to ``TCTbaasError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, OperationDenied.self, ResourceNotFound.self]
    }

    private let error: Code

    public let context: TCErrorContext?

    public var errorCode: String {
        self.error.rawValue
    }

    /// Initializer used by ``TCClient`` to match an error of this type.
    public init?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }

    /// CAM??????/???????????????
    public static var authFailure: TCTbaasError {
        TCTbaasError(.authFailure)
    }

    /// ????????????????????????
    ///
    /// ?????????????????????????????????????????????/????????????????????????????????????????????????
    public static var authFailure_UnauthorizedOperation: TCTbaasError {
        TCTbaasError(.authFailure_UnauthorizedOperation)
    }

    /// ?????????????????????????????????????????????????????????????????????????????????????????????
    public static var failedOperation_BaaSStopServing: TCTbaasError {
        TCTbaasError(.failedOperation_BaaSStopServing)
    }

    /// Bcos???????????????
    public static var failedOperation_BcosService: TCTbaasError {
        TCTbaasError(.failedOperation_BcosService)
    }

    /// ??????CSR???????????????
    public static var failedOperation_CaCheckCsr: TCTbaasError {
        TCTbaasError(.failedOperation_CaCheckCsr)
    }

    /// ????????????????????????
    public static var failedOperation_CaDbOption: TCTbaasError {
        TCTbaasError(.failedOperation_CaDbOption)
    }

    /// ?????????????????????
    public static var failedOperation_CaExsit: TCTbaasError {
        TCTbaasError(.failedOperation_CaExsit)
    }

    /// ????????????????????????
    public static var failedOperation_CaGenkey: TCTbaasError {
        TCTbaasError(.failedOperation_CaGenkey)
    }

    /// ?????????CA?????????
    public static var failedOperation_CaInit: TCTbaasError {
        TCTbaasError(.failedOperation_CaInit)
    }

    /// ?????????????????????
    public static var failedOperation_CaInputParam: TCTbaasError {
        TCTbaasError(.failedOperation_CaInputParam)
    }

    /// ??????????????????
    public static var failedOperation_CaNoExist: TCTbaasError {
        TCTbaasError(.failedOperation_CaNoExist)
    }

    /// ?????????????????????
    public static var failedOperation_CaRevoke: TCTbaasError {
        TCTbaasError(.failedOperation_CaRevoke)
    }

    /// ?????????????????????
    public static var failedOperation_CaRootNonExist: TCTbaasError {
        TCTbaasError(.failedOperation_CaRootNonExist)
    }

    /// CA???????????????
    public static var failedOperation_CaService: TCTbaasError {
        TCTbaasError(.failedOperation_CaService)
    }

    /// ?????????????????????
    public static var failedOperation_CaSignCert: TCTbaasError {
        TCTbaasError(.failedOperation_CaSignCert)
    }

    /// CFCA???API?????????????????????
    public static var failedOperation_CaYunApiApplyCert: TCTbaasError {
        TCTbaasError(.failedOperation_CaYunApiApplyCert)
    }

    /// CFCA???API?????????
    public static var failedOperation_CaYunApiCommon: TCTbaasError {
        TCTbaasError(.failedOperation_CaYunApiCommon)
    }

    /// ??????????????????????????????
    public static var failedOperation_ChainCodeChannel: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeChannel)
    }

    /// ??????????????????
    public static var failedOperation_ChainCodeExist: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeExist)
    }

    /// ????????????????????????
    public static var failedOperation_ChainCodeInit: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeInit)
    }

    /// ?????????????????????
    public static var failedOperation_ChainCodeInstall: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeInstall)
    }

    /// Bcos????????????????????????????????????
    public static var failedOperation_CompileDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_CompileDeployedContract)
    }

    /// Bcos????????????????????????????????????
    public static var failedOperation_CompileDeployingContract: TCTbaasError {
        TCTbaasError(.failedOperation_CompileDeployingContract)
    }

    /// Bcos?????????????????????????????????????????????
    public static var failedOperation_ContractEditedByOtherAgency: TCTbaasError {
        TCTbaasError(.failedOperation_ContractEditedByOtherAgency)
    }

    /// ????????????????????????
    public static var failedOperation_DatabaseException: TCTbaasError {
        TCTbaasError(.failedOperation_DatabaseException)
    }

    /// Bcos?????????????????????????????????
    public static var failedOperation_DeleteDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_DeleteDeployedContract)
    }

    /// Bcos????????????????????????????????????
    public static var failedOperation_DeleteDeployingContract: TCTbaasError {
        TCTbaasError(.failedOperation_DeleteDeployingContract)
    }

    /// Bcos?????????????????????????????????
    public static var failedOperation_DeployContractNotCompile: TCTbaasError {
        TCTbaasError(.failedOperation_DeployContractNotCompile)
    }

    /// ???????????????????????????
    public static var failedOperation_FabricBlockDetail: TCTbaasError {
        TCTbaasError(.failedOperation_FabricBlockDetail)
    }

    /// ???????????????????????????
    public static var failedOperation_FabricBlockQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricBlockQuery)
    }

    /// ???????????????
    public static var failedOperation_FabricCommit: TCTbaasError {
        TCTbaasError(.failedOperation_FabricCommit)
    }

    /// event hub?????????
    public static var failedOperation_FabricEventHub: TCTbaasError {
        TCTbaasError(.failedOperation_FabricEventHub)
    }

    /// ??????????????????????????????
    public static var failedOperation_FabricManage: TCTbaasError {
        TCTbaasError(.failedOperation_FabricManage)
    }

    /// ???????????????
    public static var failedOperation_FabricProposal: TCTbaasError {
        TCTbaasError(.failedOperation_FabricProposal)
    }

    /// fabric?????????????????????
    public static var failedOperation_FabricRequestParams: TCTbaasError {
        TCTbaasError(.failedOperation_FabricRequestParams)
    }

    /// ?????????????????????
    public static var failedOperation_FabricRequstParams: TCTbaasError {
        TCTbaasError(.failedOperation_FabricRequstParams)
    }

    /// ???????????????????????????
    public static var failedOperation_FabricTransactionDetail: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTransactionDetail)
    }

    /// ???????????????????????????
    public static var failedOperation_FabricTransactionQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTransactionQuery)
    }

    /// Txid ???????????????
    public static var failedOperation_FabricTxIdQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxIdQuery)
    }

    /// fabric invoke???????????????
    public static var failedOperation_FabricTxInvoke: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxInvoke)
    }

    /// fabric query???????????????
    public static var failedOperation_FabricTxQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxQuery)
    }

    /// fabric query????????????, ????????????
    public static var failedOperation_FabricTxQueryNone: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxQueryNone)
    }

    /// Bcos???????????????????????????
    public static var failedOperation_FrontRequestFail: TCTbaasError {
        TCTbaasError(.failedOperation_FrontRequestFail)
    }

    /// ?????????????????????
    public static var failedOperation_GroupIllegal: TCTbaasError {
        TCTbaasError(.failedOperation_GroupIllegal)
    }

    /// ???????????????
    public static var failedOperation_InvalidChaincode: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidChaincode)
    }

    /// ???????????????
    public static var failedOperation_InvalidChannel: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidChannel)
    }

    /// ???????????????
    public static var failedOperation_InvalidCluster: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidCluster)
    }

    /// ???????????????
    public static var failedOperation_InvalidGroup: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidGroup)
    }

    /// Bcos????????????????????????
    public static var failedOperation_InvalidGroupPk: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidGroupPk)
    }

    /// Bcos??????????????????????????????
    public static var failedOperation_InvalidKeyUser: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidKeyUser)
    }

    /// ???????????????
    public static var failedOperation_InvalidOperation: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidOperation)
    }

    /// ???????????????
    public static var failedOperation_InvalidPeer: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidPeer)
    }

    /// ???????????????
    public static var failedOperation_InvalidResource: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidResource)
    }

    /// ?????????????????????
    ///
    /// ManageService service internal error, please try again later or contact with us.
    public static var failedOperation_ManageService: TCTbaasError {
        TCTbaasError(.failedOperation_ManageService)
    }

    /// Bcos?????????????????????
    public static var failedOperation_NewContract: TCTbaasError {
        TCTbaasError(.failedOperation_NewContract)
    }

    /// ?????????????????????????????????
    public static var failedOperation_NoChainCodeChannel: TCTbaasError {
        TCTbaasError(.failedOperation_NoChainCodeChannel)
    }

    /// ???????????????????????????
    public static var failedOperation_NoChainCodeGroup: TCTbaasError {
        TCTbaasError(.failedOperation_NoChainCodeGroup)
    }

    /// ??????????????????????????????
    public static var failedOperation_NoChainCodePeer: TCTbaasError {
        TCTbaasError(.failedOperation_NoChainCodePeer)
    }

    /// ???????????????????????????
    public static var failedOperation_NoChannelGroup: TCTbaasError {
        TCTbaasError(.failedOperation_NoChannelGroup)
    }

    /// ???????????????????????????
    public static var failedOperation_NoChannelPeer: TCTbaasError {
        TCTbaasError(.failedOperation_NoChannelPeer)
    }

    /// ??????????????????
    public static var failedOperation_NoObject: TCTbaasError {
        TCTbaasError(.failedOperation_NoObject)
    }

    /// ?????????????????????
    public static var failedOperation_NoPeer: TCTbaasError {
        TCTbaasError(.failedOperation_NoPeer)
    }

    /// Bcos??????????????????
    public static var failedOperation_NotDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_NotDeployedContract)
    }

    /// ???????????????????????????????????????
    public static var failedOperation_ServiceFailed: TCTbaasError {
        TCTbaasError(.failedOperation_ServiceFailed)
    }

    /// ????????????????????????
    public static var failedOperation_StatusNoMatch: TCTbaasError {
        TCTbaasError(.failedOperation_StatusNoMatch)
    }

    /// ???????????????????????????
    public static var failedOperation_TimeOutUrl: TCTbaasError {
        TCTbaasError(.failedOperation_TimeOutUrl)
    }

    /// ???????????????????????????????????????
    public static var failedOperation_TransactionTimeout: TCTbaasError {
        TCTbaasError(.failedOperation_TransactionTimeout)
    }

    /// Bcos????????????????????????
    public static var failedOperation_UpdateDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_UpdateDeployedContract)
    }

    /// ?????????????????????????????????
    public static var failedOperation_UserAuthType: TCTbaasError {
        TCTbaasError(.failedOperation_UserAuthType)
    }

    /// ?????????????????????????????????????????????????????????????????????
    public static var failedOperation_UserInBlackList: TCTbaasError {
        TCTbaasError(.failedOperation_UserInBlackList)
    }

    /// ??????????????????????????????
    public static var failedOperation_UserNoJoinDemoCluster: TCTbaasError {
        TCTbaasError(.failedOperation_UserNoJoinDemoCluster)
    }

    /// Bcos????????????????????????????????????
    public static var internalError_DBError: TCTbaasError {
        TCTbaasError(.internalError_DBError)
    }

    /// ???????????????
    public static var internalError_FailPreform: TCTbaasError {
        TCTbaasError(.internalError_FailPreform)
    }

    /// ??????????????????????????????
    public static var internalError_FailUrl: TCTbaasError {
        TCTbaasError(.internalError_FailUrl)
    }

    /// Flask???????????????
    public static var internalError_FlaskException: TCTbaasError {
        TCTbaasError(.internalError_FlaskException)
    }

    /// Bcos????????????????????????
    public static var internalError_InvalidContractParam: TCTbaasError {
        TCTbaasError(.internalError_InvalidContractParam)
    }

    /// Bcos???????????????????????????
    public static var internalError_MethodTypeNotSupport: TCTbaasError {
        TCTbaasError(.internalError_MethodTypeNotSupport)
    }

    /// ?????????????????????
    public static var internalError_NoDefineError: TCTbaasError {
        TCTbaasError(.internalError_NoDefineError)
    }

    /// Bcos??????????????????????????????
    public static var internalError_ServerError: TCTbaasError {
        TCTbaasError(.internalError_ServerError)
    }

    /// ??????????????????
    public static var internalError_ServerException: TCTbaasError {
        TCTbaasError(.internalError_ServerException)
    }

    /// ???????????????????????????
    public static var internalError_ServiceError: TCTbaasError {
        TCTbaasError(.internalError_ServiceError)
    }

    /// ?????????????????????????????????
    public static var internalError_ServicePanic: TCTbaasError {
        TCTbaasError(.internalError_ServicePanic)
    }

    /// ???????????????????????????
    public static var internalError_TransactionService: TCTbaasError {
        TCTbaasError(.internalError_TransactionService)
    }

    /// ???????????????????????????????????????
    public static var internalError_UnknownError: TCTbaasError {
        TCTbaasError(.internalError_UnknownError)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCTbaasError {
        TCTbaasError(.invalidParameterValue)
    }

    /// ????????????????????????
    public static var invalidParameterValue_IllegalFormat: TCTbaasError {
        TCTbaasError(.invalidParameterValue_IllegalFormat)
    }

    /// ????????????????????????
    public static var invalidParameterValue_IllegalValue: TCTbaasError {
        TCTbaasError(.invalidParameterValue_IllegalValue)
    }

    /// ??????????????????
    public static var invalidParameterValue_ParameterEmpty: TCTbaasError {
        TCTbaasError(.invalidParameterValue_ParameterEmpty)
    }

    /// Bcos?????????????????????
    public static var invalidParameter_AccountParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_AccountParamError)
    }

    /// Bcos????????????????????????
    public static var invalidParameter_AgencyInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_AgencyInvalid)
    }

    /// Bcos?????????????????????????????????????????????
    public static var invalidParameter_AgencyNetParamInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_AgencyNetParamInvalid)
    }

    /// Bcos?????????????????????????????????
    public static var invalidParameter_AllianceIdOfNetEmpty: TCTbaasError {
        TCTbaasError(.invalidParameter_AllianceIdOfNetEmpty)
    }

    /// Bcos????????????????????????
    public static var invalidParameter_ContractIdInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_ContractIdInvalid)
    }

    /// Bcos???????????????????????????????????????
    public static var invalidParameter_DataHadExist: TCTbaasError {
        TCTbaasError(.invalidParameter_DataHadExist)
    }

    /// Bcos???????????????
    public static var invalidParameter_EmptyParam: TCTbaasError {
        TCTbaasError(.invalidParameter_EmptyParam)
    }

    /// Bcos????????????????????????
    public static var invalidParameter_ExpireTimeInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_ExpireTimeInvalid)
    }

    /// Bcos?????????IP??????????????????
    public static var invalidParameter_FrontConnFail: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontConnFail)
    }

    /// Bcos IP???????????????
    public static var invalidParameter_FrontIpInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontIpInvalid)
    }

    /// Bcos?????????????????????????????????
    public static var invalidParameter_FrontParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontParamError)
    }

    /// Bcos???????????????????????????
    public static var invalidParameter_FrontRequestFail: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontRequestFail)
    }

    /// ?????????????????????????????????
    public static var invalidParameter_InputDataViolation: TCTbaasError {
        TCTbaasError(.invalidParameter_InputDataViolation)
    }

    /// Bcos????????????????????????
    public static var invalidParameter_InvalidContractArg: TCTbaasError {
        TCTbaasError(.invalidParameter_InvalidContractArg)
    }

    /// Bcos????????????????????????
    public static var invalidParameter_NetIdInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_NetIdInvalid)
    }

    /// Bcos?????????????????????
    public static var invalidParameter_NetParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_NetParamError)
    }

    /// Bcos?????????????????????????????????
    public static var invalidParameter_NewKeyUserParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_NewKeyUserParamError)
    }

    /// Bcos???????????????,?????????????????????
    public static var invalidParameter_NoInfoToDelete: TCTbaasError {
        TCTbaasError(.invalidParameter_NoInfoToDelete)
    }

    /// Bcos????????????????????????????????????
    public static var invalidParameter_NotFoundValidFront: TCTbaasError {
        TCTbaasError(.invalidParameter_NotFoundValidFront)
    }

    /// Bcos???????????????????????????
    public static var invalidParameter_ReDeployedContract: TCTbaasError {
        TCTbaasError(.invalidParameter_ReDeployedContract)
    }

    /// Bcos?????????????????????????????????????????????
    public static var invalidParameter_ReDeployingContract: TCTbaasError {
        TCTbaasError(.invalidParameter_ReDeployingContract)
    }

    /// Bcos??????????????????
    public static var invalidParameter_RoleInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_RoleInvalid)
    }

    /// Bcos???????????????
    public static var missingParameter_EmptyParam: TCTbaasError {
        TCTbaasError(.missingParameter_EmptyParam)
    }

    /// ??????????????????????????????
    public static var operationDenied_NotOwner: TCTbaasError {
        TCTbaasError(.operationDenied_NotOwner)
    }

    /// Bcos?????????????????????
    public static var resourceNotFound_EmptyData: TCTbaasError {
        TCTbaasError(.resourceNotFound_EmptyData)
    }

    public func asTbaasError() -> TCTbaasError {
        return self
    }
}
